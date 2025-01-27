.class public final enum Lorg/jline/builtins/Nano$HighlightRule$RuleType;
.super Ljava/lang/Enum;
.source "Nano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jline/builtins/Nano$HighlightRule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RuleType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jline/builtins/Nano$HighlightRule$RuleType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jline/builtins/Nano$HighlightRule$RuleType;

.field public static final enum PATTERN:Lorg/jline/builtins/Nano$HighlightRule$RuleType;

.field public static final enum START_END:Lorg/jline/builtins/Nano$HighlightRule$RuleType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1594
    new-instance v0, Lorg/jline/builtins/Nano$HighlightRule$RuleType;

    const-string v1, "PATTERN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/jline/builtins/Nano$HighlightRule$RuleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jline/builtins/Nano$HighlightRule$RuleType;->PATTERN:Lorg/jline/builtins/Nano$HighlightRule$RuleType;

    new-instance v1, Lorg/jline/builtins/Nano$HighlightRule$RuleType;

    const-string v3, "START_END"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/jline/builtins/Nano$HighlightRule$RuleType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/jline/builtins/Nano$HighlightRule$RuleType;->START_END:Lorg/jline/builtins/Nano$HighlightRule$RuleType;

    const/4 v3, 0x2

    new-array v3, v3, [Lorg/jline/builtins/Nano$HighlightRule$RuleType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lorg/jline/builtins/Nano$HighlightRule$RuleType;->$VALUES:[Lorg/jline/builtins/Nano$HighlightRule$RuleType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1594
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jline/builtins/Nano$HighlightRule$RuleType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 1594
    const-class v0, Lorg/jline/builtins/Nano$HighlightRule$RuleType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jline/builtins/Nano$HighlightRule$RuleType;

    return-object v0
.end method

.method public static values()[Lorg/jline/builtins/Nano$HighlightRule$RuleType;
    .locals 1

    .line 1594
    sget-object v0, Lorg/jline/builtins/Nano$HighlightRule$RuleType;->$VALUES:[Lorg/jline/builtins/Nano$HighlightRule$RuleType;

    invoke-virtual {v0}, [Lorg/jline/builtins/Nano$HighlightRule$RuleType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jline/builtins/Nano$HighlightRule$RuleType;

    return-object v0
.end method
