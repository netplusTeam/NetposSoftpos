.class public final enum Lorg/jline/reader/Parser$ParseContext;
.super Ljava/lang/Enum;
.source "Parser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jline/reader/Parser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ParseContext"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jline/reader/Parser$ParseContext;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jline/reader/Parser$ParseContext;

.field public static final enum ACCEPT_LINE:Lorg/jline/reader/Parser$ParseContext;

.field public static final enum COMPLETE:Lorg/jline/reader/Parser$ParseContext;

.field public static final enum SECONDARY_PROMPT:Lorg/jline/reader/Parser$ParseContext;

.field public static final enum SPLIT_LINE:Lorg/jline/reader/Parser$ParseContext;

.field public static final enum UNSPECIFIED:Lorg/jline/reader/Parser$ParseContext;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 62
    new-instance v0, Lorg/jline/reader/Parser$ParseContext;

    const-string v1, "UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/jline/reader/Parser$ParseContext;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jline/reader/Parser$ParseContext;->UNSPECIFIED:Lorg/jline/reader/Parser$ParseContext;

    .line 67
    new-instance v1, Lorg/jline/reader/Parser$ParseContext;

    const-string v3, "ACCEPT_LINE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/jline/reader/Parser$ParseContext;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/jline/reader/Parser$ParseContext;->ACCEPT_LINE:Lorg/jline/reader/Parser$ParseContext;

    .line 73
    new-instance v3, Lorg/jline/reader/Parser$ParseContext;

    const-string v5, "SPLIT_LINE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/jline/reader/Parser$ParseContext;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/jline/reader/Parser$ParseContext;->SPLIT_LINE:Lorg/jline/reader/Parser$ParseContext;

    .line 78
    new-instance v5, Lorg/jline/reader/Parser$ParseContext;

    const-string v7, "COMPLETE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lorg/jline/reader/Parser$ParseContext;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/jline/reader/Parser$ParseContext;->COMPLETE:Lorg/jline/reader/Parser$ParseContext;

    .line 84
    new-instance v7, Lorg/jline/reader/Parser$ParseContext;

    const-string v9, "SECONDARY_PROMPT"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lorg/jline/reader/Parser$ParseContext;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lorg/jline/reader/Parser$ParseContext;->SECONDARY_PROMPT:Lorg/jline/reader/Parser$ParseContext;

    .line 61
    const/4 v9, 0x5

    new-array v9, v9, [Lorg/jline/reader/Parser$ParseContext;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lorg/jline/reader/Parser$ParseContext;->$VALUES:[Lorg/jline/reader/Parser$ParseContext;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 61
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jline/reader/Parser$ParseContext;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 61
    const-class v0, Lorg/jline/reader/Parser$ParseContext;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jline/reader/Parser$ParseContext;

    return-object v0
.end method

.method public static values()[Lorg/jline/reader/Parser$ParseContext;
    .locals 1

    .line 61
    sget-object v0, Lorg/jline/reader/Parser$ParseContext;->$VALUES:[Lorg/jline/reader/Parser$ParseContext;

    invoke-virtual {v0}, [Lorg/jline/reader/Parser$ParseContext;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jline/reader/Parser$ParseContext;

    return-object v0
.end method
