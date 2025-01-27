.class Lcom/sleepycat/je/Cursor$2;
.super Ljava/lang/Object;
.source "Cursor.java"

# interfaces
.implements Lcom/sleepycat/je/dbi/RangeConstraint;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sleepycat/je/Cursor;->setPrefixConstraint(Lcom/sleepycat/je/Cursor;Lcom/sleepycat/je/DatabaseEntry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sleepycat/je/Cursor;

.field final synthetic val$key2:Lcom/sleepycat/je/DatabaseEntry;


# direct methods
.method constructor <init>(Lcom/sleepycat/je/Cursor;Lcom/sleepycat/je/DatabaseEntry;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sleepycat/je/Cursor;

    .line 503
    iput-object p1, p0, Lcom/sleepycat/je/Cursor$2;->this$0:Lcom/sleepycat/je/Cursor;

    iput-object p2, p0, Lcom/sleepycat/je/Cursor$2;->val$key2:Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public inBounds([B)Z
    .locals 4
    .param p1, "checkKey"    # [B

    .line 505
    iget-object v0, p0, Lcom/sleepycat/je/Cursor$2;->val$key2:Lcom/sleepycat/je/DatabaseEntry;

    .line 506
    invoke-virtual {v0}, Lcom/sleepycat/je/DatabaseEntry;->getData()[B

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/Cursor$2;->val$key2:Lcom/sleepycat/je/DatabaseEntry;

    invoke-virtual {v1}, Lcom/sleepycat/je/DatabaseEntry;->getOffset()I

    move-result v1

    iget-object v2, p0, Lcom/sleepycat/je/Cursor$2;->val$key2:Lcom/sleepycat/je/DatabaseEntry;

    .line 507
    invoke-virtual {v2}, Lcom/sleepycat/je/DatabaseEntry;->getSize()I

    move-result v2

    iget-object v3, p0, Lcom/sleepycat/je/Cursor$2;->this$0:Lcom/sleepycat/je/Cursor;

    invoke-static {v3}, Lcom/sleepycat/je/Cursor;->access$000(Lcom/sleepycat/je/Cursor;)Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getBtreeComparator()Ljava/util/Comparator;

    move-result-object v3

    .line 505
    invoke-static {p1, v0, v1, v2, v3}, Lcom/sleepycat/je/dbi/DupKeyData;->compareMainKey([B[BIILjava/util/Comparator;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
