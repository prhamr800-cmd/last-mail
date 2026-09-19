package io.realm.internal.network;

import io.realm.SyncCredentials;
import io.realm.internal.objectserver.Token;
import java.net.URI;
import java.net.URL;

/* JADX INFO: loaded from: classes2.dex */
public interface AuthenticationServer {
    ChangePasswordResponse changePassword(Token token, String str, String str2, URL url);

    ChangePasswordResponse changePassword(Token token, String str, URL url);

    UpdateAccountResponse completePasswordReset(String str, String str2, URL url);

    UpdateAccountResponse confirmEmail(String str, URL url);

    AuthenticateResponse loginToRealm(Token token, URI uri, URL url);

    AuthenticateResponse loginUser(SyncCredentials syncCredentials, URL url);

    LogoutResponse logout(Token token, URL url);

    AuthenticateResponse refreshUser(Token token, URI uri, URL url);

    UpdateAccountResponse requestEmailConfirmation(String str, URL url);

    UpdateAccountResponse requestPasswordReset(String str, URL url);

    LookupUserIdResponse retrieveUser(Token token, String str, String str2, URL url);
}
