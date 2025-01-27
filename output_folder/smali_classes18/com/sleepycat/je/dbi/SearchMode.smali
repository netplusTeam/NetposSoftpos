.class public final enum Lcom/sleepycat/je/dbi/SearchMode;
.super Ljava/lang/Enum;
.source "SearchMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sleepycat/je/dbi/SearchMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sleepycat/je/dbi/SearchMode;

.field public static final enum ANY_RANGE:Lcom/sleepycat/je/dbi/SearchMode;

.field public static final enum BOTH:Lcom/sleepycat/je/dbi/SearchMode;

.field public static final enum BOTH_RANGE:Lcom/sleepycat/je/dbi/SearchMode;

.field public static final enum SET:Lcom/sleepycat/je/dbi/SearchMode;

.field public static final enum SET_RANGE:Lcom/sleepycat/je/dbi/SearchMode;


# instance fields
.field private final dataSearch:Z

.field private final exactSearch:Z

.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 17
    new-instance v6, Lcom/sleepycat/je/dbi/SearchMode;

    const-string v1, "SET"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, "SET"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/sleepycat/je/dbi/SearchMode;-><init>(Ljava/lang/String;IZZLjava/lang/String;)V

    sput-object v6, Lcom/sleepycat/je/dbi/SearchMode;->SET:Lcom/sleepycat/je/dbi/SearchMode;

    .line 18
    new-instance v0, Lcom/sleepycat/je/dbi/SearchMode;

    const-string v8, "BOTH"

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x1

    const-string v12, "BOTH"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/sleepycat/je/dbi/SearchMode;-><init>(Ljava/lang/String;IZZLjava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/dbi/SearchMode;->BOTH:Lcom/sleepycat/je/dbi/SearchMode;

    .line 19
    new-instance v1, Lcom/sleepycat/je/dbi/SearchMode;

    const-string v14, "SET_RANGE"

    const/4 v15, 0x2

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-string v18, "SET_RANGE"

    move-object v13, v1

    invoke-direct/range {v13 .. v18}, Lcom/sleepycat/je/dbi/SearchMode;-><init>(Ljava/lang/String;IZZLjava/lang/String;)V

    sput-object v1, Lcom/sleepycat/je/dbi/SearchMode;->SET_RANGE:Lcom/sleepycat/je/dbi/SearchMode;

    .line 20
    new-instance v2, Lcom/sleepycat/je/dbi/SearchMode;

    const-string v8, "BOTH_RANGE"

    const/4 v9, 0x3

    const/4 v10, 0x0

    const-string v12, "BOTH_RANGE"

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Lcom/sleepycat/je/dbi/SearchMode;-><init>(Ljava/lang/String;IZZLjava/lang/String;)V

    sput-object v2, Lcom/sleepycat/je/dbi/SearchMode;->BOTH_RANGE:Lcom/sleepycat/je/dbi/SearchMode;

    .line 21
    new-instance v3, Lcom/sleepycat/je/dbi/SearchMode;

    const-string v14, "ANY_RANGE"

    const/4 v15, 0x4

    const-string v18, "ANY_RANGE"

    move-object v13, v3

    invoke-direct/range {v13 .. v18}, Lcom/sleepycat/je/dbi/SearchMode;-><init>(Ljava/lang/String;IZZLjava/lang/String;)V

    sput-object v3, Lcom/sleepycat/je/dbi/SearchMode;->ANY_RANGE:Lcom/sleepycat/je/dbi/SearchMode;

    .line 16
    const/4 v4, 0x5

    new-array v4, v4, [Lcom/sleepycat/je/dbi/SearchMode;

    const/4 v5, 0x0

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    const/4 v0, 0x2

    aput-object v1, v4, v0

    const/4 v0, 0x3

    aput-object v2, v4, v0

    const/4 v0, 0x4

    aput-object v3, v4, v0

    sput-object v4, Lcom/sleepycat/je/dbi/SearchMode;->$VALUES:[Lcom/sleepycat/je/dbi/SearchMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZZLjava/lang/String;)V
    .locals 0
    .param p3, "exactSearch"    # Z
    .param p4, "dataSearch"    # Z
    .param p5, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 28
    iput-boolean p3, p0, Lcom/sleepycat/je/dbi/SearchMode;->exactSearch:Z

    .line 29
    iput-boolean p4, p0, Lcom/sleepycat/je/dbi/SearchMode;->dataSearch:Z

    .line 30
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "SearchMode."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sleepycat/je/dbi/SearchMode;->name:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sleepycat/je/dbi/SearchMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 16
    const-class v0, Lcom/sleepycat/je/dbi/SearchMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/dbi/SearchMode;

    return-object v0
.end method

.method public static values()[Lcom/sleepycat/je/dbi/SearchMode;
    .locals 1

    .line 16
    sget-object v0, Lcom/sleepycat/je/dbi/SearchMode;->$VALUES:[Lcom/sleepycat/je/dbi/SearchMode;

    invoke-virtual {v0}, [Lcom/sleepycat/je/dbi/SearchMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sleepycat/je/dbi/SearchMode;

    return-object v0
.end method


# virtual methods
.method public final isDataSearch()Z
    .locals 1

    .line 47
    iget-boolean v0, p0, Lcom/sleepycat/je/dbi/SearchMode;->dataSearch:Z

    return v0
.end method

.method public final isExactSearch()Z
    .locals 1

    .line 38
    iget-boolean v0, p0, Lcom/sleepycat/je/dbi/SearchMode;->exactSearch:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/sleepycat/je/dbi/SearchMode;->name:Ljava/lang/String;

    return-object v0
.end method
