###### Class io.realm.internal.network.AuthenticationServer (io.realm.internal.network.AuthenticationServer)
.class public interface abstract Lio/realm/internal/network/AuthenticationServer;
.super Ljava/lang/Object;
.source "AuthenticationServer.java"


# virtual methods
.method public abstract changePassword(Lio/realm/internal/objectserver/Token;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;)Lio/realm/internal/network/ChangePasswordResponse;
.end method

.method public abstract changePassword(Lio/realm/internal/objectserver/Token;Ljava/lang/String;Ljava/net/URL;)Lio/realm/internal/network/ChangePasswordResponse;
.end method

.method public abstract completePasswordReset(Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;)Lio/realm/internal/network/UpdateAccountResponse;
.end method

.method public abstract confirmEmail(Ljava/lang/String;Ljava/net/URL;)Lio/realm/internal/network/UpdateAccountResponse;
.end method

.method public abstract loginToRealm(Lio/realm/internal/objectserver/Token;Ljava/net/URI;Ljava/net/URL;)Lio/realm/internal/network/AuthenticateResponse;
.end method

.method public abstract loginUser(Lio/realm/SyncCredentials;Ljava/net/URL;)Lio/realm/internal/network/AuthenticateResponse;
.end method

.method public abstract logout(Lio/realm/internal/objectserver/Token;Ljava/net/URL;)Lio/realm/internal/network/LogoutResponse;
.end method

.method public abstract refreshUser(Lio/realm/internal/objectserver/Token;Ljava/net/URI;Ljava/net/URL;)Lio/realm/internal/network/AuthenticateResponse;
.end method

.method public abstract requestEmailConfirmation(Ljava/lang/String;Ljava/net/URL;)Lio/realm/internal/network/UpdateAccountResponse;
.end method

.method public abstract requestPasswordReset(Ljava/lang/String;Ljava/net/URL;)Lio/realm/internal/network/UpdateAccountResponse;
.end method

.method public abstract retrieveUser(Lio/realm/internal/objectserver/Token;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;)Lio/realm/internal/network/LookupUserIdResponse;
.end method
