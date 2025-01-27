.class final enum Lcom/sleepycat/json_simple/Jsoner$DeserializationOptions;
.super Ljava/lang/Enum;
.source "Jsoner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/json_simple/Jsoner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "DeserializationOptions"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sleepycat/json_simple/Jsoner$DeserializationOptions;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sleepycat/json_simple/Jsoner$DeserializationOptions;

.field public static final enum ALLOW_CONCATENATED_JSON_VALUES:Lcom/sleepycat/json_simple/Jsoner$DeserializationOptions;

.field public static final enum ALLOW_JSON_ARRAYS:Lcom/sleepycat/json_simple/Jsoner$DeserializationOptions;

.field public static final enum ALLOW_JSON_DATA:Lcom/sleepycat/json_simple/Jsoner$DeserializationOptions;

.field public static final enum ALLOW_JSON_OBJECTS:Lcom/sleepycat/json_simple/Jsoner$DeserializationOptions;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 32
    new-instance v0, Lcom/sleepycat/json_simple/Jsoner$DeserializationOptions;

    const-string v1, "ALLOW_CONCATENATED_JSON_VALUES"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/json_simple/Jsoner$DeserializationOptions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/json_simple/Jsoner$DeserializationOptions;->ALLOW_CONCATENATED_JSON_VALUES:Lcom/sleepycat/json_simple/Jsoner$DeserializationOptions;

    .line 34
    new-instance v1, Lcom/sleepycat/json_simple/Jsoner$DeserializationOptions;

    const-string v3, "ALLOW_JSON_ARRAYS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sleepycat/json_simple/Jsoner$DeserializationOptions;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sleepycat/json_simple/Jsoner$DeserializationOptions;->ALLOW_JSON_ARRAYS:Lcom/sleepycat/json_simple/Jsoner$DeserializationOptions;

    .line 36
    new-instance v3, Lcom/sleepycat/json_simple/Jsoner$DeserializationOptions;

    const-string v5, "ALLOW_JSON_DATA"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sleepycat/json_simple/Jsoner$DeserializationOptions;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sleepycat/json_simple/Jsoner$DeserializationOptions;->ALLOW_JSON_DATA:Lcom/sleepycat/json_simple/Jsoner$DeserializationOptions;

    .line 38
    new-instance v5, Lcom/sleepycat/json_simple/Jsoner$DeserializationOptions;

    const-string v7, "ALLOW_JSON_OBJECTS"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/sleepycat/json_simple/Jsoner$DeserializationOptions;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/sleepycat/json_simple/Jsoner$DeserializationOptions;->ALLOW_JSON_OBJECTS:Lcom/sleepycat/json_simple/Jsoner$DeserializationOptions;

    .line 30
    const/4 v7, 0x4

    new-array v7, v7, [Lcom/sleepycat/json_simple/Jsoner$DeserializationOptions;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/sleepycat/json_simple/Jsoner$DeserializationOptions;->$VALUES:[Lcom/sleepycat/json_simple/Jsoner$DeserializationOptions;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sleepycat/json_simple/Jsoner$DeserializationOptions;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 30
    const-class v0, Lcom/sleepycat/json_simple/Jsoner$DeserializationOptions;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/json_simple/Jsoner$DeserializationOptions;

    return-object v0
.end method

.method public static values()[Lcom/sleepycat/json_simple/Jsoner$DeserializationOptions;
    .locals 1

    .line 30
    sget-object v0, Lcom/sleepycat/json_simple/Jsoner$DeserializationOptions;->$VALUES:[Lcom/sleepycat/json_simple/Jsoner$DeserializationOptions;

    invoke-virtual {v0}, [Lcom/sleepycat/json_simple/Jsoner$DeserializationOptions;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sleepycat/json_simple/Jsoner$DeserializationOptions;

    return-object v0
.end method
