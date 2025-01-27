.class public final enum Lorg/jline/widget/TailTipWidgets$TipType;
.super Ljava/lang/Enum;
.source "TailTipWidgets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jline/widget/TailTipWidgets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TipType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jline/widget/TailTipWidgets$TipType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jline/widget/TailTipWidgets$TipType;

.field public static final enum COMBINED:Lorg/jline/widget/TailTipWidgets$TipType;

.field public static final enum COMPLETER:Lorg/jline/widget/TailTipWidgets$TipType;

.field public static final enum TAIL_TIP:Lorg/jline/widget/TailTipWidgets$TipType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 42
    new-instance v0, Lorg/jline/widget/TailTipWidgets$TipType;

    const-string v1, "TAIL_TIP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/jline/widget/TailTipWidgets$TipType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jline/widget/TailTipWidgets$TipType;->TAIL_TIP:Lorg/jline/widget/TailTipWidgets$TipType;

    .line 46
    new-instance v1, Lorg/jline/widget/TailTipWidgets$TipType;

    const-string v3, "COMPLETER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/jline/widget/TailTipWidgets$TipType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/jline/widget/TailTipWidgets$TipType;->COMPLETER:Lorg/jline/widget/TailTipWidgets$TipType;

    .line 51
    new-instance v3, Lorg/jline/widget/TailTipWidgets$TipType;

    const-string v5, "COMBINED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/jline/widget/TailTipWidgets$TipType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/jline/widget/TailTipWidgets$TipType;->COMBINED:Lorg/jline/widget/TailTipWidgets$TipType;

    .line 38
    const/4 v5, 0x3

    new-array v5, v5, [Lorg/jline/widget/TailTipWidgets$TipType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lorg/jline/widget/TailTipWidgets$TipType;->$VALUES:[Lorg/jline/widget/TailTipWidgets$TipType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jline/widget/TailTipWidgets$TipType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 38
    const-class v0, Lorg/jline/widget/TailTipWidgets$TipType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jline/widget/TailTipWidgets$TipType;

    return-object v0
.end method

.method public static values()[Lorg/jline/widget/TailTipWidgets$TipType;
    .locals 1

    .line 38
    sget-object v0, Lorg/jline/widget/TailTipWidgets$TipType;->$VALUES:[Lorg/jline/widget/TailTipWidgets$TipType;

    invoke-virtual {v0}, [Lorg/jline/widget/TailTipWidgets$TipType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jline/widget/TailTipWidgets$TipType;

    return-object v0
.end method
