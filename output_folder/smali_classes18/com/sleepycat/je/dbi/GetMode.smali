.class public final enum Lcom/sleepycat/je/dbi/GetMode;
.super Ljava/lang/Enum;
.source "GetMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sleepycat/je/dbi/GetMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sleepycat/je/dbi/GetMode;

.field public static final enum NEXT:Lcom/sleepycat/je/dbi/GetMode;

.field public static final enum NEXT_DUP:Lcom/sleepycat/je/dbi/GetMode;

.field public static final enum NEXT_NODUP:Lcom/sleepycat/je/dbi/GetMode;

.field public static final enum PREV:Lcom/sleepycat/je/dbi/GetMode;

.field public static final enum PREV_DUP:Lcom/sleepycat/je/dbi/GetMode;

.field public static final enum PREV_NODUP:Lcom/sleepycat/je/dbi/GetMode;


# instance fields
.field private forward:Z

.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 21
    new-instance v0, Lcom/sleepycat/je/dbi/GetMode;

    const-string v1, "NEXT"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v1, v3}, Lcom/sleepycat/je/dbi/GetMode;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/sleepycat/je/dbi/GetMode;->NEXT:Lcom/sleepycat/je/dbi/GetMode;

    .line 22
    new-instance v1, Lcom/sleepycat/je/dbi/GetMode;

    const-string v4, "PREV"

    invoke-direct {v1, v4, v3, v4, v2}, Lcom/sleepycat/je/dbi/GetMode;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v1, Lcom/sleepycat/je/dbi/GetMode;->PREV:Lcom/sleepycat/je/dbi/GetMode;

    .line 23
    new-instance v4, Lcom/sleepycat/je/dbi/GetMode;

    const-string v5, "NEXT_DUP"

    const/4 v6, 0x2

    invoke-direct {v4, v5, v6, v5, v3}, Lcom/sleepycat/je/dbi/GetMode;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v4, Lcom/sleepycat/je/dbi/GetMode;->NEXT_DUP:Lcom/sleepycat/je/dbi/GetMode;

    .line 24
    new-instance v5, Lcom/sleepycat/je/dbi/GetMode;

    const-string v7, "PREV_DUP"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v7, v2}, Lcom/sleepycat/je/dbi/GetMode;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v5, Lcom/sleepycat/je/dbi/GetMode;->PREV_DUP:Lcom/sleepycat/je/dbi/GetMode;

    .line 25
    new-instance v7, Lcom/sleepycat/je/dbi/GetMode;

    const-string v9, "NEXT_NODUP"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v9, v3}, Lcom/sleepycat/je/dbi/GetMode;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v7, Lcom/sleepycat/je/dbi/GetMode;->NEXT_NODUP:Lcom/sleepycat/je/dbi/GetMode;

    .line 26
    new-instance v9, Lcom/sleepycat/je/dbi/GetMode;

    const-string v11, "PREV_NODUP"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v11, v2}, Lcom/sleepycat/je/dbi/GetMode;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v9, Lcom/sleepycat/je/dbi/GetMode;->PREV_NODUP:Lcom/sleepycat/je/dbi/GetMode;

    .line 20
    const/4 v11, 0x6

    new-array v11, v11, [Lcom/sleepycat/je/dbi/GetMode;

    aput-object v0, v11, v2

    aput-object v1, v11, v3

    aput-object v4, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lcom/sleepycat/je/dbi/GetMode;->$VALUES:[Lcom/sleepycat/je/dbi/GetMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 0
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "forward"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 32
    iput-object p3, p0, Lcom/sleepycat/je/dbi/GetMode;->name:Ljava/lang/String;

    .line 33
    iput-boolean p4, p0, Lcom/sleepycat/je/dbi/GetMode;->forward:Z

    .line 34
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sleepycat/je/dbi/GetMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 20
    const-class v0, Lcom/sleepycat/je/dbi/GetMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/dbi/GetMode;

    return-object v0
.end method

.method public static values()[Lcom/sleepycat/je/dbi/GetMode;
    .locals 1

    .line 20
    sget-object v0, Lcom/sleepycat/je/dbi/GetMode;->$VALUES:[Lcom/sleepycat/je/dbi/GetMode;

    invoke-virtual {v0}, [Lcom/sleepycat/je/dbi/GetMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sleepycat/je/dbi/GetMode;

    return-object v0
.end method


# virtual methods
.method public final isForward()Z
    .locals 1

    .line 37
    iget-boolean v0, p0, Lcom/sleepycat/je/dbi/GetMode;->forward:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/sleepycat/je/dbi/GetMode;->name:Ljava/lang/String;

    return-object v0
.end method
