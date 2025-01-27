.class public final enum Lorg/jline/builtins/Nano$WriteMode;
.super Ljava/lang/Enum;
.source "Nano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jline/builtins/Nano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "WriteMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jline/builtins/Nano$WriteMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jline/builtins/Nano$WriteMode;

.field public static final enum APPEND:Lorg/jline/builtins/Nano$WriteMode;

.field public static final enum PREPEND:Lorg/jline/builtins/Nano$WriteMode;

.field public static final enum WRITE:Lorg/jline/builtins/Nano$WriteMode;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 128
    new-instance v0, Lorg/jline/builtins/Nano$WriteMode;

    const-string v1, "WRITE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/jline/builtins/Nano$WriteMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jline/builtins/Nano$WriteMode;->WRITE:Lorg/jline/builtins/Nano$WriteMode;

    .line 129
    new-instance v1, Lorg/jline/builtins/Nano$WriteMode;

    const-string v3, "APPEND"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/jline/builtins/Nano$WriteMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/jline/builtins/Nano$WriteMode;->APPEND:Lorg/jline/builtins/Nano$WriteMode;

    .line 130
    new-instance v3, Lorg/jline/builtins/Nano$WriteMode;

    const-string v5, "PREPEND"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/jline/builtins/Nano$WriteMode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/jline/builtins/Nano$WriteMode;->PREPEND:Lorg/jline/builtins/Nano$WriteMode;

    .line 127
    const/4 v5, 0x3

    new-array v5, v5, [Lorg/jline/builtins/Nano$WriteMode;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lorg/jline/builtins/Nano$WriteMode;->$VALUES:[Lorg/jline/builtins/Nano$WriteMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 127
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jline/builtins/Nano$WriteMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 127
    const-class v0, Lorg/jline/builtins/Nano$WriteMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jline/builtins/Nano$WriteMode;

    return-object v0
.end method

.method public static values()[Lorg/jline/builtins/Nano$WriteMode;
    .locals 1

    .line 127
    sget-object v0, Lorg/jline/builtins/Nano$WriteMode;->$VALUES:[Lorg/jline/builtins/Nano$WriteMode;

    invoke-virtual {v0}, [Lorg/jline/builtins/Nano$WriteMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jline/builtins/Nano$WriteMode;

    return-object v0
.end method
