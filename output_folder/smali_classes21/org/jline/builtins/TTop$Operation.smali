.class public final enum Lorg/jline/builtins/TTop$Operation;
.super Ljava/lang/Enum;
.source "TTop.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jline/builtins/TTop;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Operation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jline/builtins/TTop$Operation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jline/builtins/TTop$Operation;

.field public static final enum CLEAR:Lorg/jline/builtins/TTop$Operation;

.field public static final enum DECREASE_DELAY:Lorg/jline/builtins/TTop$Operation;

.field public static final enum EXIT:Lorg/jline/builtins/TTop$Operation;

.field public static final enum HELP:Lorg/jline/builtins/TTop$Operation;

.field public static final enum INCREASE_DELAY:Lorg/jline/builtins/TTop$Operation;

.field public static final enum REVERSE:Lorg/jline/builtins/TTop$Operation;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 66
    new-instance v0, Lorg/jline/builtins/TTop$Operation;

    const-string v1, "INCREASE_DELAY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/jline/builtins/TTop$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jline/builtins/TTop$Operation;->INCREASE_DELAY:Lorg/jline/builtins/TTop$Operation;

    .line 67
    new-instance v1, Lorg/jline/builtins/TTop$Operation;

    const-string v3, "DECREASE_DELAY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/jline/builtins/TTop$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/jline/builtins/TTop$Operation;->DECREASE_DELAY:Lorg/jline/builtins/TTop$Operation;

    .line 68
    new-instance v3, Lorg/jline/builtins/TTop$Operation;

    const-string v5, "HELP"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/jline/builtins/TTop$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/jline/builtins/TTop$Operation;->HELP:Lorg/jline/builtins/TTop$Operation;

    .line 69
    new-instance v5, Lorg/jline/builtins/TTop$Operation;

    const-string v7, "EXIT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lorg/jline/builtins/TTop$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/jline/builtins/TTop$Operation;->EXIT:Lorg/jline/builtins/TTop$Operation;

    .line 70
    new-instance v7, Lorg/jline/builtins/TTop$Operation;

    const-string v9, "CLEAR"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lorg/jline/builtins/TTop$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lorg/jline/builtins/TTop$Operation;->CLEAR:Lorg/jline/builtins/TTop$Operation;

    .line 71
    new-instance v9, Lorg/jline/builtins/TTop$Operation;

    const-string v11, "REVERSE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lorg/jline/builtins/TTop$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lorg/jline/builtins/TTop$Operation;->REVERSE:Lorg/jline/builtins/TTop$Operation;

    .line 65
    const/4 v11, 0x6

    new-array v11, v11, [Lorg/jline/builtins/TTop$Operation;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lorg/jline/builtins/TTop$Operation;->$VALUES:[Lorg/jline/builtins/TTop$Operation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 65
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jline/builtins/TTop$Operation;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 65
    const-class v0, Lorg/jline/builtins/TTop$Operation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jline/builtins/TTop$Operation;

    return-object v0
.end method

.method public static values()[Lorg/jline/builtins/TTop$Operation;
    .locals 1

    .line 65
    sget-object v0, Lorg/jline/builtins/TTop$Operation;->$VALUES:[Lorg/jline/builtins/TTop$Operation;

    invoke-virtual {v0}, [Lorg/jline/builtins/TTop$Operation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jline/builtins/TTop$Operation;

    return-object v0
.end method
