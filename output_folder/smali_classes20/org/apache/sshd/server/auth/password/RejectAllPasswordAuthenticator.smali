.class public final Lorg/apache/sshd/server/auth/password/RejectAllPasswordAuthenticator;
.super Lorg/apache/sshd/server/auth/password/StaticPasswordAuthenticator;
.source "RejectAllPasswordAuthenticator.java"


# static fields
.field public static final INSTANCE:Lorg/apache/sshd/server/auth/password/RejectAllPasswordAuthenticator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    new-instance v0, Lorg/apache/sshd/server/auth/password/RejectAllPasswordAuthenticator;

    invoke-direct {v0}, Lorg/apache/sshd/server/auth/password/RejectAllPasswordAuthenticator;-><init>()V

    sput-object v0, Lorg/apache/sshd/server/auth/password/RejectAllPasswordAuthenticator;->INSTANCE:Lorg/apache/sshd/server/auth/password/RejectAllPasswordAuthenticator;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/sshd/server/auth/password/StaticPasswordAuthenticator;-><init>(Z)V

    .line 29
    return-void
.end method
