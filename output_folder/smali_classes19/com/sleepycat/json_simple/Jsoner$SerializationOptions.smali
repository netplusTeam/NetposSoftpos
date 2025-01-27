.class final enum Lcom/sleepycat/json_simple/Jsoner$SerializationOptions;
.super Ljava/lang/Enum;
.source "Jsoner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/json_simple/Jsoner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "SerializationOptions"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sleepycat/json_simple/Jsoner$SerializationOptions;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sleepycat/json_simple/Jsoner$SerializationOptions;

.field public static final enum ALLOW_INVALIDS:Lcom/sleepycat/json_simple/Jsoner$SerializationOptions;

.field public static final enum ALLOW_JSONABLES:Lcom/sleepycat/json_simple/Jsoner$SerializationOptions;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 46
    new-instance v0, Lcom/sleepycat/json_simple/Jsoner$SerializationOptions;

    const-string v1, "ALLOW_INVALIDS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/json_simple/Jsoner$SerializationOptions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/json_simple/Jsoner$SerializationOptions;->ALLOW_INVALIDS:Lcom/sleepycat/json_simple/Jsoner$SerializationOptions;

    .line 50
    new-instance v1, Lcom/sleepycat/json_simple/Jsoner$SerializationOptions;

    const-string v3, "ALLOW_JSONABLES"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sleepycat/json_simple/Jsoner$SerializationOptions;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sleepycat/json_simple/Jsoner$SerializationOptions;->ALLOW_JSONABLES:Lcom/sleepycat/json_simple/Jsoner$SerializationOptions;

    .line 42
    const/4 v3, 0x2

    new-array v3, v3, [Lcom/sleepycat/json_simple/Jsoner$SerializationOptions;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/sleepycat/json_simple/Jsoner$SerializationOptions;->$VALUES:[Lcom/sleepycat/json_simple/Jsoner$SerializationOptions;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sleepycat/json_simple/Jsoner$SerializationOptions;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 42
    const-class v0, Lcom/sleepycat/json_simple/Jsoner$SerializationOptions;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/json_simple/Jsoner$SerializationOptions;

    return-object v0
.end method

.method public static values()[Lcom/sleepycat/json_simple/Jsoner$SerializationOptions;
    .locals 1

    .line 42
    sget-object v0, Lcom/sleepycat/json_simple/Jsoner$SerializationOptions;->$VALUES:[Lcom/sleepycat/json_simple/Jsoner$SerializationOptions;

    invoke-virtual {v0}, [Lcom/sleepycat/json_simple/Jsoner$SerializationOptions;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sleepycat/json_simple/Jsoner$SerializationOptions;

    return-object v0
.end method
