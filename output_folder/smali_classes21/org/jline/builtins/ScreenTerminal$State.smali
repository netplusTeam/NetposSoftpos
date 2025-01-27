.class final enum Lorg/jline/builtins/ScreenTerminal$State;
.super Ljava/lang/Enum;
.source "ScreenTerminal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jline/builtins/ScreenTerminal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jline/builtins/ScreenTerminal$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jline/builtins/ScreenTerminal$State;

.field public static final enum Csi:Lorg/jline/builtins/ScreenTerminal$State;

.field public static final enum Esc:Lorg/jline/builtins/ScreenTerminal$State;

.field public static final enum None:Lorg/jline/builtins/ScreenTerminal$State;

.field public static final enum Str:Lorg/jline/builtins/ScreenTerminal$State;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 58
    new-instance v0, Lorg/jline/builtins/ScreenTerminal$State;

    const-string v1, "None"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/jline/builtins/ScreenTerminal$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jline/builtins/ScreenTerminal$State;->None:Lorg/jline/builtins/ScreenTerminal$State;

    .line 59
    new-instance v1, Lorg/jline/builtins/ScreenTerminal$State;

    const-string v3, "Esc"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/jline/builtins/ScreenTerminal$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/jline/builtins/ScreenTerminal$State;->Esc:Lorg/jline/builtins/ScreenTerminal$State;

    .line 60
    new-instance v3, Lorg/jline/builtins/ScreenTerminal$State;

    const-string v5, "Str"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/jline/builtins/ScreenTerminal$State;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/jline/builtins/ScreenTerminal$State;->Str:Lorg/jline/builtins/ScreenTerminal$State;

    .line 61
    new-instance v5, Lorg/jline/builtins/ScreenTerminal$State;

    const-string v7, "Csi"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lorg/jline/builtins/ScreenTerminal$State;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/jline/builtins/ScreenTerminal$State;->Csi:Lorg/jline/builtins/ScreenTerminal$State;

    .line 57
    const/4 v7, 0x4

    new-array v7, v7, [Lorg/jline/builtins/ScreenTerminal$State;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lorg/jline/builtins/ScreenTerminal$State;->$VALUES:[Lorg/jline/builtins/ScreenTerminal$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 57
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jline/builtins/ScreenTerminal$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 57
    const-class v0, Lorg/jline/builtins/ScreenTerminal$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jline/builtins/ScreenTerminal$State;

    return-object v0
.end method

.method public static values()[Lorg/jline/builtins/ScreenTerminal$State;
    .locals 1

    .line 57
    sget-object v0, Lorg/jline/builtins/ScreenTerminal$State;->$VALUES:[Lorg/jline/builtins/ScreenTerminal$State;

    invoke-virtual {v0}, [Lorg/jline/builtins/ScreenTerminal$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jline/builtins/ScreenTerminal$State;

    return-object v0
.end method
