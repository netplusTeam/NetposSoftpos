.class public final enum Lorg/jline/console/impl/Builtins$Command;
.super Ljava/lang/Enum;
.source "Builtins.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jline/console/impl/Builtins;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Command"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jline/console/impl/Builtins$Command;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jline/console/impl/Builtins$Command;

.field public static final enum COLORS:Lorg/jline/console/impl/Builtins$Command;

.field public static final enum HISTORY:Lorg/jline/console/impl/Builtins$Command;

.field public static final enum KEYMAP:Lorg/jline/console/impl/Builtins$Command;

.field public static final enum LESS:Lorg/jline/console/impl/Builtins$Command;

.field public static final enum NANO:Lorg/jline/console/impl/Builtins$Command;

.field public static final enum SETOPT:Lorg/jline/console/impl/Builtins$Command;

.field public static final enum SETVAR:Lorg/jline/console/impl/Builtins$Command;

.field public static final enum TTOP:Lorg/jline/console/impl/Builtins$Command;

.field public static final enum UNSETOPT:Lorg/jline/console/impl/Builtins$Command;

.field public static final enum WIDGET:Lorg/jline/console/impl/Builtins$Command;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 40
    new-instance v0, Lorg/jline/console/impl/Builtins$Command;

    const-string v1, "NANO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/jline/console/impl/Builtins$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jline/console/impl/Builtins$Command;->NANO:Lorg/jline/console/impl/Builtins$Command;

    .line 41
    new-instance v1, Lorg/jline/console/impl/Builtins$Command;

    const-string v3, "LESS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/jline/console/impl/Builtins$Command;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/jline/console/impl/Builtins$Command;->LESS:Lorg/jline/console/impl/Builtins$Command;

    .line 42
    new-instance v3, Lorg/jline/console/impl/Builtins$Command;

    const-string v5, "HISTORY"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/jline/console/impl/Builtins$Command;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/jline/console/impl/Builtins$Command;->HISTORY:Lorg/jline/console/impl/Builtins$Command;

    .line 43
    new-instance v5, Lorg/jline/console/impl/Builtins$Command;

    const-string v7, "WIDGET"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lorg/jline/console/impl/Builtins$Command;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/jline/console/impl/Builtins$Command;->WIDGET:Lorg/jline/console/impl/Builtins$Command;

    .line 44
    new-instance v7, Lorg/jline/console/impl/Builtins$Command;

    const-string v9, "KEYMAP"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lorg/jline/console/impl/Builtins$Command;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lorg/jline/console/impl/Builtins$Command;->KEYMAP:Lorg/jline/console/impl/Builtins$Command;

    .line 45
    new-instance v9, Lorg/jline/console/impl/Builtins$Command;

    const-string v11, "SETOPT"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lorg/jline/console/impl/Builtins$Command;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lorg/jline/console/impl/Builtins$Command;->SETOPT:Lorg/jline/console/impl/Builtins$Command;

    .line 46
    new-instance v11, Lorg/jline/console/impl/Builtins$Command;

    const-string v13, "SETVAR"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lorg/jline/console/impl/Builtins$Command;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lorg/jline/console/impl/Builtins$Command;->SETVAR:Lorg/jline/console/impl/Builtins$Command;

    .line 47
    new-instance v13, Lorg/jline/console/impl/Builtins$Command;

    const-string v15, "UNSETOPT"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lorg/jline/console/impl/Builtins$Command;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lorg/jline/console/impl/Builtins$Command;->UNSETOPT:Lorg/jline/console/impl/Builtins$Command;

    .line 48
    new-instance v15, Lorg/jline/console/impl/Builtins$Command;

    const-string v14, "TTOP"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lorg/jline/console/impl/Builtins$Command;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lorg/jline/console/impl/Builtins$Command;->TTOP:Lorg/jline/console/impl/Builtins$Command;

    .line 49
    new-instance v14, Lorg/jline/console/impl/Builtins$Command;

    const-string v12, "COLORS"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lorg/jline/console/impl/Builtins$Command;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lorg/jline/console/impl/Builtins$Command;->COLORS:Lorg/jline/console/impl/Builtins$Command;

    .line 40
    const/16 v12, 0xa

    new-array v12, v12, [Lorg/jline/console/impl/Builtins$Command;

    aput-object v0, v12, v2

    aput-object v1, v12, v4

    aput-object v3, v12, v6

    aput-object v5, v12, v8

    const/4 v0, 0x4

    aput-object v7, v12, v0

    const/4 v0, 0x5

    aput-object v9, v12, v0

    const/4 v0, 0x6

    aput-object v11, v12, v0

    const/4 v0, 0x7

    aput-object v13, v12, v0

    const/16 v0, 0x8

    aput-object v15, v12, v0

    aput-object v14, v12, v10

    sput-object v12, Lorg/jline/console/impl/Builtins$Command;->$VALUES:[Lorg/jline/console/impl/Builtins$Command;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jline/console/impl/Builtins$Command;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 40
    const-class v0, Lorg/jline/console/impl/Builtins$Command;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jline/console/impl/Builtins$Command;

    return-object v0
.end method

.method public static values()[Lorg/jline/console/impl/Builtins$Command;
    .locals 1

    .line 40
    sget-object v0, Lorg/jline/console/impl/Builtins$Command;->$VALUES:[Lorg/jline/console/impl/Builtins$Command;

    invoke-virtual {v0}, [Lorg/jline/console/impl/Builtins$Command;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jline/console/impl/Builtins$Command;

    return-object v0
.end method
