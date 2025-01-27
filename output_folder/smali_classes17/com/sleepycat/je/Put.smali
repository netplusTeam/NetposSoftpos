.class public final enum Lcom/sleepycat/je/Put;
.super Ljava/lang/Enum;
.source "Put.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sleepycat/je/Put;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sleepycat/je/Put;

.field public static final enum CURRENT:Lcom/sleepycat/je/Put;

.field public static final enum NO_DUP_DATA:Lcom/sleepycat/je/Put;

.field public static final enum NO_OVERWRITE:Lcom/sleepycat/je/Put;

.field public static final enum OVERWRITE:Lcom/sleepycat/je/Put;


# instance fields
.field private final putMode:Lcom/sleepycat/je/dbi/PutMode;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 42
    new-instance v0, Lcom/sleepycat/je/Put;

    sget-object v1, Lcom/sleepycat/je/dbi/PutMode;->OVERWRITE:Lcom/sleepycat/je/dbi/PutMode;

    const-string v2, "OVERWRITE"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/sleepycat/je/Put;-><init>(Ljava/lang/String;ILcom/sleepycat/je/dbi/PutMode;)V

    sput-object v0, Lcom/sleepycat/je/Put;->OVERWRITE:Lcom/sleepycat/je/Put;

    .line 53
    new-instance v1, Lcom/sleepycat/je/Put;

    sget-object v2, Lcom/sleepycat/je/dbi/PutMode;->NO_OVERWRITE:Lcom/sleepycat/je/dbi/PutMode;

    const-string v4, "NO_OVERWRITE"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lcom/sleepycat/je/Put;-><init>(Ljava/lang/String;ILcom/sleepycat/je/dbi/PutMode;)V

    sput-object v1, Lcom/sleepycat/je/Put;->NO_OVERWRITE:Lcom/sleepycat/je/Put;

    .line 65
    new-instance v2, Lcom/sleepycat/je/Put;

    sget-object v4, Lcom/sleepycat/je/dbi/PutMode;->NO_DUP_DATA:Lcom/sleepycat/je/dbi/PutMode;

    const-string v6, "NO_DUP_DATA"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Lcom/sleepycat/je/Put;-><init>(Ljava/lang/String;ILcom/sleepycat/je/dbi/PutMode;)V

    sput-object v2, Lcom/sleepycat/je/Put;->NO_DUP_DATA:Lcom/sleepycat/je/Put;

    .line 97
    new-instance v4, Lcom/sleepycat/je/Put;

    sget-object v6, Lcom/sleepycat/je/dbi/PutMode;->CURRENT:Lcom/sleepycat/je/dbi/PutMode;

    const-string v8, "CURRENT"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6}, Lcom/sleepycat/je/Put;-><init>(Ljava/lang/String;ILcom/sleepycat/je/dbi/PutMode;)V

    sput-object v4, Lcom/sleepycat/je/Put;->CURRENT:Lcom/sleepycat/je/Put;

    .line 21
    const/4 v6, 0x4

    new-array v6, v6, [Lcom/sleepycat/je/Put;

    aput-object v0, v6, v3

    aput-object v1, v6, v5

    aput-object v2, v6, v7

    aput-object v4, v6, v9

    sput-object v6, Lcom/sleepycat/je/Put;->$VALUES:[Lcom/sleepycat/je/Put;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/sleepycat/je/dbi/PutMode;)V
    .locals 0
    .param p3, "putMode"    # Lcom/sleepycat/je/dbi/PutMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/dbi/PutMode;",
            ")V"
        }
    .end annotation

    .line 101
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 102
    iput-object p3, p0, Lcom/sleepycat/je/Put;->putMode:Lcom/sleepycat/je/dbi/PutMode;

    .line 103
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sleepycat/je/Put;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 21
    const-class v0, Lcom/sleepycat/je/Put;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/Put;

    return-object v0
.end method

.method public static values()[Lcom/sleepycat/je/Put;
    .locals 1

    .line 21
    sget-object v0, Lcom/sleepycat/je/Put;->$VALUES:[Lcom/sleepycat/je/Put;

    invoke-virtual {v0}, [Lcom/sleepycat/je/Put;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sleepycat/je/Put;

    return-object v0
.end method


# virtual methods
.method getPutMode()Lcom/sleepycat/je/dbi/PutMode;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/sleepycat/je/Put;->putMode:Lcom/sleepycat/je/dbi/PutMode;

    return-object v0
.end method
