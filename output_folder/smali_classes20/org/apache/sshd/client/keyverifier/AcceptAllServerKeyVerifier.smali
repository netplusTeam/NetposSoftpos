.class public final Lorg/apache/sshd/client/keyverifier/AcceptAllServerKeyVerifier;
.super Lorg/apache/sshd/client/keyverifier/StaticServerKeyVerifier;
.source "AcceptAllServerKeyVerifier.java"


# static fields
.field public static final INSTANCE:Lorg/apache/sshd/client/keyverifier/AcceptAllServerKeyVerifier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    new-instance v0, Lorg/apache/sshd/client/keyverifier/AcceptAllServerKeyVerifier;

    invoke-direct {v0}, Lorg/apache/sshd/client/keyverifier/AcceptAllServerKeyVerifier;-><init>()V

    sput-object v0, Lorg/apache/sshd/client/keyverifier/AcceptAllServerKeyVerifier;->INSTANCE:Lorg/apache/sshd/client/keyverifier/AcceptAllServerKeyVerifier;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 30
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/sshd/client/keyverifier/StaticServerKeyVerifier;-><init>(Z)V

    .line 31
    return-void
.end method
