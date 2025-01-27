.class final enum Lcom/sleepycat/json_simple/Jsoner$States;
.super Ljava/lang/Enum;
.source "Jsoner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/json_simple/Jsoner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "States"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sleepycat/json_simple/Jsoner$States;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sleepycat/json_simple/Jsoner$States;

.field public static final enum DONE:Lcom/sleepycat/json_simple/Jsoner$States;

.field public static final enum INITIAL:Lcom/sleepycat/json_simple/Jsoner$States;

.field public static final enum PARSED_ERROR:Lcom/sleepycat/json_simple/Jsoner$States;

.field public static final enum PARSING_ARRAY:Lcom/sleepycat/json_simple/Jsoner$States;

.field public static final enum PARSING_ENTRY:Lcom/sleepycat/json_simple/Jsoner$States;

.field public static final enum PARSING_OBJECT:Lcom/sleepycat/json_simple/Jsoner$States;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 56
    new-instance v0, Lcom/sleepycat/json_simple/Jsoner$States;

    const-string v1, "DONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/json_simple/Jsoner$States;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/json_simple/Jsoner$States;->DONE:Lcom/sleepycat/json_simple/Jsoner$States;

    .line 58
    new-instance v1, Lcom/sleepycat/json_simple/Jsoner$States;

    const-string v3, "INITIAL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sleepycat/json_simple/Jsoner$States;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sleepycat/json_simple/Jsoner$States;->INITIAL:Lcom/sleepycat/json_simple/Jsoner$States;

    .line 60
    new-instance v3, Lcom/sleepycat/json_simple/Jsoner$States;

    const-string v5, "PARSED_ERROR"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sleepycat/json_simple/Jsoner$States;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sleepycat/json_simple/Jsoner$States;->PARSED_ERROR:Lcom/sleepycat/json_simple/Jsoner$States;

    .line 61
    new-instance v5, Lcom/sleepycat/json_simple/Jsoner$States;

    const-string v7, "PARSING_ARRAY"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/sleepycat/json_simple/Jsoner$States;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/sleepycat/json_simple/Jsoner$States;->PARSING_ARRAY:Lcom/sleepycat/json_simple/Jsoner$States;

    .line 64
    new-instance v7, Lcom/sleepycat/json_simple/Jsoner$States;

    const-string v9, "PARSING_ENTRY"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/sleepycat/json_simple/Jsoner$States;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/sleepycat/json_simple/Jsoner$States;->PARSING_ENTRY:Lcom/sleepycat/json_simple/Jsoner$States;

    .line 65
    new-instance v9, Lcom/sleepycat/json_simple/Jsoner$States;

    const-string v11, "PARSING_OBJECT"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/sleepycat/json_simple/Jsoner$States;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/sleepycat/json_simple/Jsoner$States;->PARSING_OBJECT:Lcom/sleepycat/json_simple/Jsoner$States;

    .line 54
    const/4 v11, 0x6

    new-array v11, v11, [Lcom/sleepycat/json_simple/Jsoner$States;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lcom/sleepycat/json_simple/Jsoner$States;->$VALUES:[Lcom/sleepycat/json_simple/Jsoner$States;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 54
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sleepycat/json_simple/Jsoner$States;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 54
    const-class v0, Lcom/sleepycat/json_simple/Jsoner$States;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/json_simple/Jsoner$States;

    return-object v0
.end method

.method public static values()[Lcom/sleepycat/json_simple/Jsoner$States;
    .locals 1

    .line 54
    sget-object v0, Lcom/sleepycat/json_simple/Jsoner$States;->$VALUES:[Lcom/sleepycat/json_simple/Jsoner$States;

    invoke-virtual {v0}, [Lcom/sleepycat/json_simple/Jsoner$States;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sleepycat/json_simple/Jsoner$States;

    return-object v0
.end method
