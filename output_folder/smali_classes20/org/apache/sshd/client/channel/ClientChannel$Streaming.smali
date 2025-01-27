.class public final enum Lorg/apache/sshd/client/channel/ClientChannel$Streaming;
.super Ljava/lang/Enum;
.source "ClientChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/sshd/client/channel/ClientChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Streaming"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/sshd/client/channel/ClientChannel$Streaming;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/sshd/client/channel/ClientChannel$Streaming;

.field public static final enum Async:Lorg/apache/sshd/client/channel/ClientChannel$Streaming;

.field public static final enum Sync:Lorg/apache/sshd/client/channel/ClientChannel$Streaming;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 46
    new-instance v0, Lorg/apache/sshd/client/channel/ClientChannel$Streaming;

    const-string v1, "Async"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/sshd/client/channel/ClientChannel$Streaming;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/sshd/client/channel/ClientChannel$Streaming;->Async:Lorg/apache/sshd/client/channel/ClientChannel$Streaming;

    .line 47
    new-instance v1, Lorg/apache/sshd/client/channel/ClientChannel$Streaming;

    const-string v3, "Sync"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/apache/sshd/client/channel/ClientChannel$Streaming;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/sshd/client/channel/ClientChannel$Streaming;->Sync:Lorg/apache/sshd/client/channel/ClientChannel$Streaming;

    .line 45
    const/4 v3, 0x2

    new-array v3, v3, [Lorg/apache/sshd/client/channel/ClientChannel$Streaming;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lorg/apache/sshd/client/channel/ClientChannel$Streaming;->$VALUES:[Lorg/apache/sshd/client/channel/ClientChannel$Streaming;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/sshd/client/channel/ClientChannel$Streaming;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 45
    const-class v0, Lorg/apache/sshd/client/channel/ClientChannel$Streaming;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/client/channel/ClientChannel$Streaming;

    return-object v0
.end method

.method public static values()[Lorg/apache/sshd/client/channel/ClientChannel$Streaming;
    .locals 1

    .line 45
    sget-object v0, Lorg/apache/sshd/client/channel/ClientChannel$Streaming;->$VALUES:[Lorg/apache/sshd/client/channel/ClientChannel$Streaming;

    invoke-virtual {v0}, [Lorg/apache/sshd/client/channel/ClientChannel$Streaming;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/sshd/client/channel/ClientChannel$Streaming;

    return-object v0
.end method
