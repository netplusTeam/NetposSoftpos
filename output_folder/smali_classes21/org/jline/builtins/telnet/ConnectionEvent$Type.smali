.class public final enum Lorg/jline/builtins/telnet/ConnectionEvent$Type;
.super Ljava/lang/Enum;
.source "ConnectionEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jline/builtins/telnet/ConnectionEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jline/builtins/telnet/ConnectionEvent$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jline/builtins/telnet/ConnectionEvent$Type;

.field public static final enum CONNECTION_BREAK:Lorg/jline/builtins/telnet/ConnectionEvent$Type;

.field public static final enum CONNECTION_IDLE:Lorg/jline/builtins/telnet/ConnectionEvent$Type;

.field public static final enum CONNECTION_LOGOUTREQUEST:Lorg/jline/builtins/telnet/ConnectionEvent$Type;

.field public static final enum CONNECTION_TERMINAL_GEOMETRY_CHANGED:Lorg/jline/builtins/telnet/ConnectionEvent$Type;

.field public static final enum CONNECTION_TIMEDOUT:Lorg/jline/builtins/telnet/ConnectionEvent$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 96
    new-instance v0, Lorg/jline/builtins/telnet/ConnectionEvent$Type;

    const-string v1, "CONNECTION_IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/jline/builtins/telnet/ConnectionEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jline/builtins/telnet/ConnectionEvent$Type;->CONNECTION_IDLE:Lorg/jline/builtins/telnet/ConnectionEvent$Type;

    .line 104
    new-instance v1, Lorg/jline/builtins/telnet/ConnectionEvent$Type;

    const-string v3, "CONNECTION_TIMEDOUT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/jline/builtins/telnet/ConnectionEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/jline/builtins/telnet/ConnectionEvent$Type;->CONNECTION_TIMEDOUT:Lorg/jline/builtins/telnet/ConnectionEvent$Type;

    .line 112
    new-instance v3, Lorg/jline/builtins/telnet/ConnectionEvent$Type;

    const-string v5, "CONNECTION_LOGOUTREQUEST"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/jline/builtins/telnet/ConnectionEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/jline/builtins/telnet/ConnectionEvent$Type;->CONNECTION_LOGOUTREQUEST:Lorg/jline/builtins/telnet/ConnectionEvent$Type;

    .line 118
    new-instance v5, Lorg/jline/builtins/telnet/ConnectionEvent$Type;

    const-string v7, "CONNECTION_BREAK"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lorg/jline/builtins/telnet/ConnectionEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/jline/builtins/telnet/ConnectionEvent$Type;->CONNECTION_BREAK:Lorg/jline/builtins/telnet/ConnectionEvent$Type;

    .line 124
    new-instance v7, Lorg/jline/builtins/telnet/ConnectionEvent$Type;

    const-string v9, "CONNECTION_TERMINAL_GEOMETRY_CHANGED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lorg/jline/builtins/telnet/ConnectionEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lorg/jline/builtins/telnet/ConnectionEvent$Type;->CONNECTION_TERMINAL_GEOMETRY_CHANGED:Lorg/jline/builtins/telnet/ConnectionEvent$Type;

    .line 90
    const/4 v9, 0x5

    new-array v9, v9, [Lorg/jline/builtins/telnet/ConnectionEvent$Type;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lorg/jline/builtins/telnet/ConnectionEvent$Type;->$VALUES:[Lorg/jline/builtins/telnet/ConnectionEvent$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 90
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jline/builtins/telnet/ConnectionEvent$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 90
    const-class v0, Lorg/jline/builtins/telnet/ConnectionEvent$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jline/builtins/telnet/ConnectionEvent$Type;

    return-object v0
.end method

.method public static values()[Lorg/jline/builtins/telnet/ConnectionEvent$Type;
    .locals 1

    .line 90
    sget-object v0, Lorg/jline/builtins/telnet/ConnectionEvent$Type;->$VALUES:[Lorg/jline/builtins/telnet/ConnectionEvent$Type;

    invoke-virtual {v0}, [Lorg/jline/builtins/telnet/ConnectionEvent$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jline/builtins/telnet/ConnectionEvent$Type;

    return-object v0
.end method
