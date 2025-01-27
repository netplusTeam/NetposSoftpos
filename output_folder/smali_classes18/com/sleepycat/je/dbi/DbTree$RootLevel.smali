.class Lcom/sleepycat/je/dbi/DbTree$RootLevel;
.super Ljava/lang/Object;
.source "DbTree.java"

# interfaces
.implements Lcom/sleepycat/je/tree/WithRootLatched;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/dbi/DbTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RootLevel"
.end annotation


# instance fields
.field private final db:Lcom/sleepycat/je/dbi/DatabaseImpl;

.field private rootLevel:I


# direct methods
.method constructor <init>(Lcom/sleepycat/je/dbi/DatabaseImpl;)V
    .locals 1
    .param p1, "db"    # Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 1921
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1922
    iput-object p1, p0, Lcom/sleepycat/je/dbi/DbTree$RootLevel;->db:Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 1923
    const/4 v0, 0x0

    iput v0, p0, Lcom/sleepycat/je/dbi/DbTree$RootLevel;->rootLevel:I

    .line 1924
    return-void
.end method


# virtual methods
.method public doWork(Lcom/sleepycat/je/tree/ChildReference;)Lcom/sleepycat/je/tree/IN;
    .locals 3
    .param p1, "root"    # Lcom/sleepycat/je/tree/ChildReference;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1929
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1930
    return-object v0

    .line 1932
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/je/dbi/DbTree$RootLevel;->db:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {p1, v1, v0}, Lcom/sleepycat/je/tree/ChildReference;->fetchTarget(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/tree/IN;)Lcom/sleepycat/je/tree/Node;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/tree/IN;

    .line 1933
    .local v1, "rootIN":Lcom/sleepycat/je/tree/IN;
    invoke-virtual {v1}, Lcom/sleepycat/je/tree/IN;->getLevel()I

    move-result v2

    iput v2, p0, Lcom/sleepycat/je/dbi/DbTree$RootLevel;->rootLevel:I

    .line 1934
    return-object v0
.end method

.method getRootLevel()I
    .locals 1

    .line 1938
    iget v0, p0, Lcom/sleepycat/je/dbi/DbTree$RootLevel;->rootLevel:I

    return v0
.end method
