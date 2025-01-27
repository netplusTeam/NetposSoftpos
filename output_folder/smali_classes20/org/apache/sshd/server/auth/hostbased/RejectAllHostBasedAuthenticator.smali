.class public final Lorg/apache/sshd/server/auth/hostbased/RejectAllHostBasedAuthenticator;
.super Lorg/apache/sshd/server/auth/hostbased/StaticHostBasedAuthenticator;
.source "RejectAllHostBasedAuthenticator.java"


# static fields
.field public static final INSTANCE:Lorg/apache/sshd/server/auth/hostbased/RejectAllHostBasedAuthenticator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Lorg/apache/sshd/server/auth/hostbased/RejectAllHostBasedAuthenticator;

    invoke-direct {v0}, Lorg/apache/sshd/server/auth/hostbased/RejectAllHostBasedAuthenticator;-><init>()V

    sput-object v0, Lorg/apache/sshd/server/auth/hostbased/RejectAllHostBasedAuthenticator;->INSTANCE:Lorg/apache/sshd/server/auth/hostbased/RejectAllHostBasedAuthenticator;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/sshd/server/auth/hostbased/StaticHostBasedAuthenticator;-><init>(Z)V

    .line 30
    return-void
.end method
