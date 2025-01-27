.class public Lch/qos/logback/core/net/LoginAuthenticator;
.super Ljavax/mail/Authenticator;
.source "LoginAuthenticator.java"


# instance fields
.field password:Ljava/lang/String;

.field username:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .line 27
    invoke-direct {p0}, Ljavax/mail/Authenticator;-><init>()V

    .line 28
    iput-object p1, p0, Lch/qos/logback/core/net/LoginAuthenticator;->username:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lch/qos/logback/core/net/LoginAuthenticator;->password:Ljava/lang/String;

    .line 30
    return-void
.end method


# virtual methods
.method public getPasswordAuthentication()Ljavax/mail/PasswordAuthentication;
    .locals 3

    .line 33
    new-instance v0, Ljavax/mail/PasswordAuthentication;

    iget-object v1, p0, Lch/qos/logback/core/net/LoginAuthenticator;->username:Ljava/lang/String;

    iget-object v2, p0, Lch/qos/logback/core/net/LoginAuthenticator;->password:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljavax/mail/PasswordAuthentication;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
