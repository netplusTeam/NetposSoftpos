.class public Lcom/sleepycat/je/dbi/TruncateResult;
.super Ljava/lang/Object;
.source "TruncateResult.java"


# instance fields
.field private count:I

.field private db:Lcom/sleepycat/je/dbi/DatabaseImpl;


# direct methods
.method constructor <init>(Lcom/sleepycat/je/dbi/DatabaseImpl;I)V
    .locals 0
    .param p1, "db"    # Lcom/sleepycat/je/dbi/DatabaseImpl;
    .param p2, "count"    # I

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/sleepycat/je/dbi/TruncateResult;->db:Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 26
    iput p2, p0, Lcom/sleepycat/je/dbi/TruncateResult;->count:I

    .line 27
    return-void
.end method


# virtual methods
.method public getDatabase()Lcom/sleepycat/je/dbi/DatabaseImpl;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/sleepycat/je/dbi/TruncateResult;->db:Lcom/sleepycat/je/dbi/DatabaseImpl;

    return-object v0
.end method

.method public getRecordCount()I
    .locals 1

    .line 34
    iget v0, p0, Lcom/sleepycat/je/dbi/TruncateResult;->count:I

    return v0
.end method
