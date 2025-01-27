.class public final enum Lcom/sleepycat/je/dbi/PutMode;
.super Ljava/lang/Enum;
.source "PutMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sleepycat/je/dbi/PutMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sleepycat/je/dbi/PutMode;

.field public static final enum CURRENT:Lcom/sleepycat/je/dbi/PutMode;

.field public static final enum NO_DUP_DATA:Lcom/sleepycat/je/dbi/PutMode;

.field public static final enum NO_OVERWRITE:Lcom/sleepycat/je/dbi/PutMode;

.field public static final enum OVERWRITE:Lcom/sleepycat/je/dbi/PutMode;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 25
    new-instance v0, Lcom/sleepycat/je/dbi/PutMode;

    const-string v1, "CURRENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/dbi/PutMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/je/dbi/PutMode;->CURRENT:Lcom/sleepycat/je/dbi/PutMode;

    .line 32
    new-instance v1, Lcom/sleepycat/je/dbi/PutMode;

    const-string v3, "NO_DUP_DATA"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sleepycat/je/dbi/PutMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sleepycat/je/dbi/PutMode;->NO_DUP_DATA:Lcom/sleepycat/je/dbi/PutMode;

    .line 38
    new-instance v3, Lcom/sleepycat/je/dbi/PutMode;

    const-string v5, "NO_OVERWRITE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sleepycat/je/dbi/PutMode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sleepycat/je/dbi/PutMode;->NO_OVERWRITE:Lcom/sleepycat/je/dbi/PutMode;

    .line 45
    new-instance v5, Lcom/sleepycat/je/dbi/PutMode;

    const-string v7, "OVERWRITE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/sleepycat/je/dbi/PutMode;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/sleepycat/je/dbi/PutMode;->OVERWRITE:Lcom/sleepycat/je/dbi/PutMode;

    .line 19
    const/4 v7, 0x4

    new-array v7, v7, [Lcom/sleepycat/je/dbi/PutMode;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/sleepycat/je/dbi/PutMode;->$VALUES:[Lcom/sleepycat/je/dbi/PutMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sleepycat/je/dbi/PutMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 19
    const-class v0, Lcom/sleepycat/je/dbi/PutMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/dbi/PutMode;

    return-object v0
.end method

.method public static values()[Lcom/sleepycat/je/dbi/PutMode;
    .locals 1

    .line 19
    sget-object v0, Lcom/sleepycat/je/dbi/PutMode;->$VALUES:[Lcom/sleepycat/je/dbi/PutMode;

    invoke-virtual {v0}, [Lcom/sleepycat/je/dbi/PutMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sleepycat/je/dbi/PutMode;

    return-object v0
.end method
