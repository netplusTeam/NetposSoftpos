.class public final enum Lorg/jline/terminal/Terminal$Signal;
.super Ljava/lang/Enum;
.source "Terminal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jline/terminal/Terminal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Signal"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jline/terminal/Terminal$Signal;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jline/terminal/Terminal$Signal;

.field public static final enum CONT:Lorg/jline/terminal/Terminal$Signal;

.field public static final enum INFO:Lorg/jline/terminal/Terminal$Signal;

.field public static final enum INT:Lorg/jline/terminal/Terminal$Signal;

.field public static final enum QUIT:Lorg/jline/terminal/Terminal$Signal;

.field public static final enum TSTP:Lorg/jline/terminal/Terminal$Signal;

.field public static final enum WINCH:Lorg/jline/terminal/Terminal$Signal;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 46
    new-instance v0, Lorg/jline/terminal/Terminal$Signal;

    const-string v1, "INT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/jline/terminal/Terminal$Signal;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jline/terminal/Terminal$Signal;->INT:Lorg/jline/terminal/Terminal$Signal;

    .line 47
    new-instance v1, Lorg/jline/terminal/Terminal$Signal;

    const-string v3, "QUIT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/jline/terminal/Terminal$Signal;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/jline/terminal/Terminal$Signal;->QUIT:Lorg/jline/terminal/Terminal$Signal;

    .line 48
    new-instance v3, Lorg/jline/terminal/Terminal$Signal;

    const-string v5, "TSTP"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/jline/terminal/Terminal$Signal;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/jline/terminal/Terminal$Signal;->TSTP:Lorg/jline/terminal/Terminal$Signal;

    .line 49
    new-instance v5, Lorg/jline/terminal/Terminal$Signal;

    const-string v7, "CONT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lorg/jline/terminal/Terminal$Signal;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/jline/terminal/Terminal$Signal;->CONT:Lorg/jline/terminal/Terminal$Signal;

    .line 50
    new-instance v7, Lorg/jline/terminal/Terminal$Signal;

    const-string v9, "INFO"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lorg/jline/terminal/Terminal$Signal;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lorg/jline/terminal/Terminal$Signal;->INFO:Lorg/jline/terminal/Terminal$Signal;

    .line 51
    new-instance v9, Lorg/jline/terminal/Terminal$Signal;

    const-string v11, "WINCH"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lorg/jline/terminal/Terminal$Signal;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lorg/jline/terminal/Terminal$Signal;->WINCH:Lorg/jline/terminal/Terminal$Signal;

    .line 45
    const/4 v11, 0x6

    new-array v11, v11, [Lorg/jline/terminal/Terminal$Signal;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lorg/jline/terminal/Terminal$Signal;->$VALUES:[Lorg/jline/terminal/Terminal$Signal;

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

.method public static valueOf(Ljava/lang/String;)Lorg/jline/terminal/Terminal$Signal;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 45
    const-class v0, Lorg/jline/terminal/Terminal$Signal;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jline/terminal/Terminal$Signal;

    return-object v0
.end method

.method public static values()[Lorg/jline/terminal/Terminal$Signal;
    .locals 1

    .line 45
    sget-object v0, Lorg/jline/terminal/Terminal$Signal;->$VALUES:[Lorg/jline/terminal/Terminal$Signal;

    invoke-virtual {v0}, [Lorg/jline/terminal/Terminal$Signal;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jline/terminal/Terminal$Signal;

    return-object v0
.end method
