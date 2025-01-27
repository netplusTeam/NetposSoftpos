.class public Lorg/apache/sshd/common/random/JceRandomFactory;
.super Lorg/apache/sshd/common/random/AbstractRandomFactory;
.source "JceRandomFactory.java"


# static fields
.field public static final INSTANCE:Lorg/apache/sshd/common/random/JceRandomFactory;

.field public static final NAME:Ljava/lang/String; = "default"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    new-instance v0, Lorg/apache/sshd/common/random/JceRandomFactory;

    invoke-direct {v0}, Lorg/apache/sshd/common/random/JceRandomFactory;-><init>()V

    sput-object v0, Lorg/apache/sshd/common/random/JceRandomFactory;->INSTANCE:Lorg/apache/sshd/common/random/JceRandomFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 30
    const-string v0, "default"

    invoke-direct {p0, v0}, Lorg/apache/sshd/common/random/AbstractRandomFactory;-><init>(Ljava/lang/String;)V

    .line 31
    return-void
.end method


# virtual methods
.method public bridge synthetic create()Ljava/lang/Object;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lorg/apache/sshd/common/random/JceRandomFactory;->create()Lorg/apache/sshd/common/random/Random;

    move-result-object v0

    return-object v0
.end method

.method public create()Lorg/apache/sshd/common/random/Random;
    .locals 1

    .line 40
    new-instance v0, Lorg/apache/sshd/common/random/JceRandom;

    invoke-direct {v0}, Lorg/apache/sshd/common/random/JceRandom;-><init>()V

    return-object v0
.end method

.method public isSupported()Z
    .locals 1

    .line 35
    const/4 v0, 0x1

    return v0
.end method
