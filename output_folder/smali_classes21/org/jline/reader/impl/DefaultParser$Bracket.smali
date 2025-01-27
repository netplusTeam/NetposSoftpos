.class public final enum Lorg/jline/reader/impl/DefaultParser$Bracket;
.super Ljava/lang/Enum;
.source "DefaultParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jline/reader/impl/DefaultParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Bracket"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jline/reader/impl/DefaultParser$Bracket;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jline/reader/impl/DefaultParser$Bracket;

.field public static final enum ANGLE:Lorg/jline/reader/impl/DefaultParser$Bracket;

.field public static final enum CURLY:Lorg/jline/reader/impl/DefaultParser$Bracket;

.field public static final enum ROUND:Lorg/jline/reader/impl/DefaultParser$Bracket;

.field public static final enum SQUARE:Lorg/jline/reader/impl/DefaultParser$Bracket;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 24
    new-instance v0, Lorg/jline/reader/impl/DefaultParser$Bracket;

    const-string v1, "ROUND"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/jline/reader/impl/DefaultParser$Bracket;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jline/reader/impl/DefaultParser$Bracket;->ROUND:Lorg/jline/reader/impl/DefaultParser$Bracket;

    .line 25
    new-instance v1, Lorg/jline/reader/impl/DefaultParser$Bracket;

    const-string v3, "CURLY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/jline/reader/impl/DefaultParser$Bracket;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/jline/reader/impl/DefaultParser$Bracket;->CURLY:Lorg/jline/reader/impl/DefaultParser$Bracket;

    .line 26
    new-instance v3, Lorg/jline/reader/impl/DefaultParser$Bracket;

    const-string v5, "SQUARE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/jline/reader/impl/DefaultParser$Bracket;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/jline/reader/impl/DefaultParser$Bracket;->SQUARE:Lorg/jline/reader/impl/DefaultParser$Bracket;

    .line 27
    new-instance v5, Lorg/jline/reader/impl/DefaultParser$Bracket;

    const-string v7, "ANGLE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lorg/jline/reader/impl/DefaultParser$Bracket;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/jline/reader/impl/DefaultParser$Bracket;->ANGLE:Lorg/jline/reader/impl/DefaultParser$Bracket;

    .line 23
    const/4 v7, 0x4

    new-array v7, v7, [Lorg/jline/reader/impl/DefaultParser$Bracket;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lorg/jline/reader/impl/DefaultParser$Bracket;->$VALUES:[Lorg/jline/reader/impl/DefaultParser$Bracket;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jline/reader/impl/DefaultParser$Bracket;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 23
    const-class v0, Lorg/jline/reader/impl/DefaultParser$Bracket;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jline/reader/impl/DefaultParser$Bracket;

    return-object v0
.end method

.method public static values()[Lorg/jline/reader/impl/DefaultParser$Bracket;
    .locals 1

    .line 23
    sget-object v0, Lorg/jline/reader/impl/DefaultParser$Bracket;->$VALUES:[Lorg/jline/reader/impl/DefaultParser$Bracket;

    invoke-virtual {v0}, [Lorg/jline/reader/impl/DefaultParser$Bracket;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jline/reader/impl/DefaultParser$Bracket;

    return-object v0
.end method
