.class public final Lorg/apache/sshd/server/auth/hostbased/AcceptAllHostBasedAuthenticator;
.super Lorg/apache/sshd/server/auth/hostbased/StaticHostBasedAuthenticator;
.source "AcceptAllHostBasedAuthenticator.java"


# static fields
.field public static final INSTANCE:Lorg/apache/sshd/server/auth/hostbased/AcceptAllHostBasedAuthenticator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Lorg/apache/sshd/server/auth/hostbased/AcceptAllHostBasedAuthenticator;

    invoke-direct {v0}, Lorg/apache/sshd/server/auth/hostbased/AcceptAllHostBasedAuthenticator;-><init>()V

    sput-object v0, Lorg/apache/sshd/server/auth/hostbased/AcceptAllHostBasedAuthenticator;->INSTANCE:Lorg/apache/sshd/server/auth/hostbased/AcceptAllHostBasedAuthenticator;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 29
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/sshd/server/auth/hostbased/StaticHostBasedAuthenticator;-><init>(Z)V

    .line 30
    return-void
.end method
