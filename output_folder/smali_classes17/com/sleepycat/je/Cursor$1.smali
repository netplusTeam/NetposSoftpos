.class Lcom/sleepycat/je/Cursor$1;
.super Ljava/lang/Object;
.source "Cursor.java"

# interfaces
.implements Lcom/sleepycat/je/dbi/RangeConstraint;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sleepycat/je/Cursor;->setPrefixConstraint(Lcom/sleepycat/je/Cursor;[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sleepycat/je/Cursor;

.field final synthetic val$keyBytes2:[B


# direct methods
.method constructor <init>(Lcom/sleepycat/je/Cursor;[B)V
    .locals 0
    .param p1, "this$0"    # Lcom/sleepycat/je/Cursor;

    .line 493
    iput-object p1, p0, Lcom/sleepycat/je/Cursor$1;->this$0:Lcom/sleepycat/je/Cursor;

    iput-object p2, p0, Lcom/sleepycat/je/Cursor$1;->val$keyBytes2:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public inBounds([B)Z
    .locals 2
    .param p1, "checkKey"    # [B

    .line 495
    iget-object v0, p0, Lcom/sleepycat/je/Cursor$1;->val$keyBytes2:[B

    iget-object v1, p0, Lcom/sleepycat/je/Cursor$1;->this$0:Lcom/sleepycat/je/Cursor;

    .line 496
    invoke-static {v1}, Lcom/sleepycat/je/Cursor;->access$000(Lcom/sleepycat/je/Cursor;)Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getBtreeComparator()Ljava/util/Comparator;

    move-result-object v1

    .line 495
    invoke-static {p1, v0, v1}, Lcom/sleepycat/je/dbi/DupKeyData;->compareMainKey([B[BLjava/util/Comparator;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
