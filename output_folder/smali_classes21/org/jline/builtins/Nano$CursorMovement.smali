.class public final enum Lorg/jline/builtins/Nano$CursorMovement;
.super Ljava/lang/Enum;
.source "Nano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jline/builtins/Nano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "CursorMovement"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jline/builtins/Nano$CursorMovement;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jline/builtins/Nano$CursorMovement;

.field public static final enum LEFT:Lorg/jline/builtins/Nano$CursorMovement;

.field public static final enum RIGHT:Lorg/jline/builtins/Nano$CursorMovement;

.field public static final enum STILL:Lorg/jline/builtins/Nano$CursorMovement;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 140
    new-instance v0, Lorg/jline/builtins/Nano$CursorMovement;

    const-string v1, "RIGHT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/jline/builtins/Nano$CursorMovement;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jline/builtins/Nano$CursorMovement;->RIGHT:Lorg/jline/builtins/Nano$CursorMovement;

    .line 141
    new-instance v1, Lorg/jline/builtins/Nano$CursorMovement;

    const-string v3, "LEFT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/jline/builtins/Nano$CursorMovement;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/jline/builtins/Nano$CursorMovement;->LEFT:Lorg/jline/builtins/Nano$CursorMovement;

    .line 142
    new-instance v3, Lorg/jline/builtins/Nano$CursorMovement;

    const-string v5, "STILL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/jline/builtins/Nano$CursorMovement;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/jline/builtins/Nano$CursorMovement;->STILL:Lorg/jline/builtins/Nano$CursorMovement;

    .line 139
    const/4 v5, 0x3

    new-array v5, v5, [Lorg/jline/builtins/Nano$CursorMovement;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lorg/jline/builtins/Nano$CursorMovement;->$VALUES:[Lorg/jline/builtins/Nano$CursorMovement;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 139
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jline/builtins/Nano$CursorMovement;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 139
    const-class v0, Lorg/jline/builtins/Nano$CursorMovement;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jline/builtins/Nano$CursorMovement;

    return-object v0
.end method

.method public static values()[Lorg/jline/builtins/Nano$CursorMovement;
    .locals 1

    .line 139
    sget-object v0, Lorg/jline/builtins/Nano$CursorMovement;->$VALUES:[Lorg/jline/builtins/Nano$CursorMovement;

    invoke-virtual {v0}, [Lorg/jline/builtins/Nano$CursorMovement;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jline/builtins/Nano$CursorMovement;

    return-object v0
.end method
