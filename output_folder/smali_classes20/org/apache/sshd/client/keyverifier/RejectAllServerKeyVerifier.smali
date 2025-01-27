.class public final Lorg/apache/sshd/client/keyverifier/RejectAllServerKeyVerifier;
.super Lorg/apache/sshd/client/keyverifier/StaticServerKeyVerifier;
.source "RejectAllServerKeyVerifier.java"


# static fields
.field public static final INSTANCE:Lorg/apache/sshd/client/keyverifier/RejectAllServerKeyVerifier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Lorg/apache/sshd/client/keyverifier/RejectAllServerKeyVerifier;

    invoke-direct {v0}, Lorg/apache/sshd/client/keyverifier/RejectAllServerKeyVerifier;-><init>()V

    sput-object v0, Lorg/apache/sshd/client/keyverifier/RejectAllServerKeyVerifier;->INSTANCE:Lorg/apache/sshd/client/keyverifier/RejectAllServerKeyVerifier;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/sshd/client/keyverifier/StaticServerKeyVerifier;-><init>(Z)V

    .line 30
    return-void
.end method
