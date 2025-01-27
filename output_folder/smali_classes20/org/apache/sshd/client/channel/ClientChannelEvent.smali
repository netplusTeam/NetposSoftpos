.class public final enum Lorg/apache/sshd/client/channel/ClientChannelEvent;
.super Ljava/lang/Enum;
.source "ClientChannelEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/sshd/client/channel/ClientChannelEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/sshd/client/channel/ClientChannelEvent;

.field public static final enum CLOSED:Lorg/apache/sshd/client/channel/ClientChannelEvent;

.field public static final enum EOF:Lorg/apache/sshd/client/channel/ClientChannelEvent;

.field public static final enum EXIT_SIGNAL:Lorg/apache/sshd/client/channel/ClientChannelEvent;

.field public static final enum EXIT_STATUS:Lorg/apache/sshd/client/channel/ClientChannelEvent;

.field public static final enum OPENED:Lorg/apache/sshd/client/channel/ClientChannelEvent;

.field public static final enum STDERR_DATA:Lorg/apache/sshd/client/channel/ClientChannelEvent;

.field public static final enum STDOUT_DATA:Lorg/apache/sshd/client/channel/ClientChannelEvent;

.field public static final enum TIMEOUT:Lorg/apache/sshd/client/channel/ClientChannelEvent;

.field public static final VALUES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/apache/sshd/client/channel/ClientChannelEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 34
    new-instance v0, Lorg/apache/sshd/client/channel/ClientChannelEvent;

    const-string v1, "TIMEOUT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/sshd/client/channel/ClientChannelEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/sshd/client/channel/ClientChannelEvent;->TIMEOUT:Lorg/apache/sshd/client/channel/ClientChannelEvent;

    .line 36
    new-instance v1, Lorg/apache/sshd/client/channel/ClientChannelEvent;

    const-string v3, "CLOSED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/apache/sshd/client/channel/ClientChannelEvent;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/sshd/client/channel/ClientChannelEvent;->CLOSED:Lorg/apache/sshd/client/channel/ClientChannelEvent;

    .line 38
    new-instance v3, Lorg/apache/sshd/client/channel/ClientChannelEvent;

    const-string v5, "STDOUT_DATA"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/apache/sshd/client/channel/ClientChannelEvent;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/sshd/client/channel/ClientChannelEvent;->STDOUT_DATA:Lorg/apache/sshd/client/channel/ClientChannelEvent;

    .line 40
    new-instance v5, Lorg/apache/sshd/client/channel/ClientChannelEvent;

    const-string v7, "STDERR_DATA"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lorg/apache/sshd/client/channel/ClientChannelEvent;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/apache/sshd/client/channel/ClientChannelEvent;->STDERR_DATA:Lorg/apache/sshd/client/channel/ClientChannelEvent;

    .line 42
    new-instance v7, Lorg/apache/sshd/client/channel/ClientChannelEvent;

    const-string v9, "EOF"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lorg/apache/sshd/client/channel/ClientChannelEvent;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lorg/apache/sshd/client/channel/ClientChannelEvent;->EOF:Lorg/apache/sshd/client/channel/ClientChannelEvent;

    .line 47
    new-instance v9, Lorg/apache/sshd/client/channel/ClientChannelEvent;

    const-string v11, "EXIT_STATUS"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lorg/apache/sshd/client/channel/ClientChannelEvent;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lorg/apache/sshd/client/channel/ClientChannelEvent;->EXIT_STATUS:Lorg/apache/sshd/client/channel/ClientChannelEvent;

    .line 52
    new-instance v11, Lorg/apache/sshd/client/channel/ClientChannelEvent;

    const-string v13, "EXIT_SIGNAL"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lorg/apache/sshd/client/channel/ClientChannelEvent;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lorg/apache/sshd/client/channel/ClientChannelEvent;->EXIT_SIGNAL:Lorg/apache/sshd/client/channel/ClientChannelEvent;

    .line 54
    new-instance v13, Lorg/apache/sshd/client/channel/ClientChannelEvent;

    const-string v15, "OPENED"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lorg/apache/sshd/client/channel/ClientChannelEvent;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lorg/apache/sshd/client/channel/ClientChannelEvent;->OPENED:Lorg/apache/sshd/client/channel/ClientChannelEvent;

    .line 29
    const/16 v15, 0x8

    new-array v15, v15, [Lorg/apache/sshd/client/channel/ClientChannelEvent;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    sput-object v15, Lorg/apache/sshd/client/channel/ClientChannelEvent;->$VALUES:[Lorg/apache/sshd/client/channel/ClientChannelEvent;

    .line 56
    const-class v0, Lorg/apache/sshd/client/channel/ClientChannelEvent;

    .line 57
    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lorg/apache/sshd/client/channel/ClientChannelEvent;->VALUES:Ljava/util/Set;

    .line 56
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/sshd/client/channel/ClientChannelEvent;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 29
    const-class v0, Lorg/apache/sshd/client/channel/ClientChannelEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/client/channel/ClientChannelEvent;

    return-object v0
.end method

.method public static values()[Lorg/apache/sshd/client/channel/ClientChannelEvent;
    .locals 1

    .line 29
    sget-object v0, Lorg/apache/sshd/client/channel/ClientChannelEvent;->$VALUES:[Lorg/apache/sshd/client/channel/ClientChannelEvent;

    invoke-virtual {v0}, [Lorg/apache/sshd/client/channel/ClientChannelEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/sshd/client/channel/ClientChannelEvent;

    return-object v0
.end method
