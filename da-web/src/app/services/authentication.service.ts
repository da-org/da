import { Injectable } from "@angular/core";
import { BehaviorSubject, Observable } from "rxjs";

import { User } from "../models/user";

@Injectable({ providedIn: "root" })
export class AuthenticationService {
  private currentUserSubject: BehaviorSubject<any>;
  public currentUser: Observable<any>;

  constructor() {
    this.currentUserSubject = new BehaviorSubject<User>(
      JSON.parse(localStorage.getItem("currentUser"))
    );
    this.currentUser = this.currentUserSubject.asObservable();
  }

  public get currentUserValue(): User {
    return this.currentUserSubject.value;
  }

  login(email, password) {
    // store user details and jwt token in local storage to keep user logged in between page refreshes
    const user = {
      email: email,
      password: password,
    };
    sessionStorage.setItem("currentUser", JSON.stringify(user));
    this.currentUserSubject.next(user);
    return user;
  }

  logout() {
    // remove user from local storage and set current user to null
    sessionStorage.removeItem("currentUser");
    this.currentUserSubject.next(null);
  }
}
