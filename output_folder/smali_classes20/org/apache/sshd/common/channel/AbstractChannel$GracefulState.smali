.class public final enum Lorg/apache/sshd/common/channel/AbstractChannel$GracefulState;
.super Ljava/lang/Enum;
.source "AbstractChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/sshd/common/channel/AbstractChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "GracefulState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/sshd/common/channel/AbstractChannel$GracefulState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/sshd/common/channel/AbstractChannel$GracefulState;

.field public static final enum CloseReceived:Lorg/apache/sshd/common/channel/AbstractChannel$GracefulState;

.field public static final enum CloseSent:Lorg/apache/sshd/common/channel/AbstractChannel$GracefulState;

.field public static final enum Closed:Lorg/apache/sshd/common/channel/AbstractChannel$GracefulState;

.field public static final enum Opened:Lorg/apache/sshd/common/channel/AbstractChannel$GracefulState;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 81
    new-instance v0, Lorg/apache/sshd/common/channel/AbstractChannel$GracefulState;

    const-string v1, "Opened"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/sshd/common/channel/AbstractChannel$GracefulState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/sshd/common/channel/AbstractChannel$GracefulState;->Opened:Lorg/apache/sshd/common/channel/AbstractChannel$GracefulState;

    new-instance v1, Lorg/apache/sshd/common/channel/AbstractChannel$GracefulState;

    const-string v3, "CloseSent"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/apache/sshd/common/channel/AbstractChannel$GracefulState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/sshd/common/channel/AbstractChannel$GracefulState;->CloseSent:Lorg/apache/sshd/common/channel/AbstractChannel$GracefulState;

    new-instance v3, Lorg/apache/sshd/common/channel/AbstractChannel$GracefulState;

    const-string v5, "CloseReceived"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/apache/sshd/common/channel/AbstractChannel$GracefulState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/sshd/common/channel/AbstractChannel$GracefulState;->CloseReceived:Lorg/apache/sshd/common/channel/AbstractChannel$GracefulState;

    new-instance v5, Lorg/apache/sshd/common/channel/AbstractChannel$GracefulState;

    const-string v7, "Closed"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lorg/apache/sshd/common/channel/AbstractChannel$GracefulState;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/apache/sshd/common/channel/AbstractChannel$GracefulState;->Closed:Lorg/apache/sshd/common/channel/AbstractChannel$GracefulState;

    .line 80
    const/4 v7, 0x4

    new-array v7, v7, [Lorg/apache/sshd/common/channel/AbstractChannel$GracefulState;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lorg/apache/sshd/common/channel/AbstractChannel$GracefulState;->$VALUES:[Lorg/apache/sshd/common/channel/AbstractChannel$GracefulState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 80
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/sshd/common/channel/AbstractChannel$GracefulState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 80
    const-class v0, Lorg/apache/sshd/common/channel/AbstractChannel$GracefulState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/channel/AbstractChannel$GracefulState;

    return-object v0
.end method

.method public static values()[Lorg/apache/sshd/common/channel/AbstractChannel$GracefulState;
    .locals 1

    .line 80
    sget-object v0, Lorg/apache/sshd/common/channel/AbstractChannel$GracefulState;->$VALUES:[Lorg/apache/sshd/common/channel/AbstractChannel$GracefulState;

    invoke-virtual {v0}, [Lorg/apache/sshd/common/channel/AbstractChannel$GracefulState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/sshd/common/channel/AbstractChannel$GracefulState;

    return-object v0
.end method
