.class public final enum Lorg/jline/reader/LineReader$SuggestionType;
.super Ljava/lang/Enum;
.source "LineReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jline/reader/LineReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SuggestionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jline/reader/LineReader$SuggestionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jline/reader/LineReader$SuggestionType;

.field public static final enum COMPLETER:Lorg/jline/reader/LineReader$SuggestionType;

.field public static final enum HISTORY:Lorg/jline/reader/LineReader$SuggestionType;

.field public static final enum NONE:Lorg/jline/reader/LineReader$SuggestionType;

.field public static final enum TAIL_TIP:Lorg/jline/reader/LineReader$SuggestionType;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 501
    new-instance v0, Lorg/jline/reader/LineReader$SuggestionType;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/jline/reader/LineReader$SuggestionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jline/reader/LineReader$SuggestionType;->NONE:Lorg/jline/reader/LineReader$SuggestionType;

    .line 506
    new-instance v1, Lorg/jline/reader/LineReader$SuggestionType;

    const-string v3, "HISTORY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/jline/reader/LineReader$SuggestionType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/jline/reader/LineReader$SuggestionType;->HISTORY:Lorg/jline/reader/LineReader$SuggestionType;

    .line 510
    new-instance v3, Lorg/jline/reader/LineReader$SuggestionType;

    const-string v5, "COMPLETER"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/jline/reader/LineReader$SuggestionType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/jline/reader/LineReader$SuggestionType;->COMPLETER:Lorg/jline/reader/LineReader$SuggestionType;

    .line 515
    new-instance v5, Lorg/jline/reader/LineReader$SuggestionType;

    const-string v7, "TAIL_TIP"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lorg/jline/reader/LineReader$SuggestionType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/jline/reader/LineReader$SuggestionType;->TAIL_TIP:Lorg/jline/reader/LineReader$SuggestionType;

    .line 497
    const/4 v7, 0x4

    new-array v7, v7, [Lorg/jline/reader/LineReader$SuggestionType;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lorg/jline/reader/LineReader$SuggestionType;->$VALUES:[Lorg/jline/reader/LineReader$SuggestionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 497
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jline/reader/LineReader$SuggestionType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 497
    const-class v0, Lorg/jline/reader/LineReader$SuggestionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jline/reader/LineReader$SuggestionType;

    return-object v0
.end method

.method public static values()[Lorg/jline/reader/LineReader$SuggestionType;
    .locals 1

    .line 497
    sget-object v0, Lorg/jline/reader/LineReader$SuggestionType;->$VALUES:[Lorg/jline/reader/LineReader$SuggestionType;

    invoke-virtual {v0}, [Lorg/jline/reader/LineReader$SuggestionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jline/reader/LineReader$SuggestionType;

    return-object v0
.end method
