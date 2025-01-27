.class Lcom/sleepycat/je/dbi/DbTree$1Traversal;
.super Ljava/lang/Object;
.source "DbTree.java"

# interfaces
.implements Lcom/sleepycat/je/dbi/CursorImpl$WithCursor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sleepycat/je/dbi/DbTree;->getDbNamesAndIds()Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Traversal"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sleepycat/je/dbi/DbTree;

.field final synthetic val$nameMap:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/sleepycat/je/dbi/DbTree;Ljava/util/Map;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sleepycat/je/dbi/DbTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1780
    iput-object p1, p0, Lcom/sleepycat/je/dbi/DbTree$1Traversal;->this$0:Lcom/sleepycat/je/dbi/DbTree;

    iput-object p2, p0, Lcom/sleepycat/je/dbi/DbTree$1Traversal;->val$nameMap:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public withCursor(Lcom/sleepycat/je/dbi/CursorImpl;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Z
    .locals 4
    .param p1, "cursor"    # Lcom/sleepycat/je/dbi/CursorImpl;
    .param p2, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1787
    sget-object v0, Lcom/sleepycat/je/txn/LockType;->NONE:Lcom/sleepycat/je/txn/LockType;

    invoke-virtual {p1, v0}, Lcom/sleepycat/je/dbi/CursorImpl;->lockAndGetCurrentLN(Lcom/sleepycat/je/txn/LockType;)Lcom/sleepycat/je/tree/LN;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/tree/NameLN;

    .line 1789
    .local v0, "nameLN":Lcom/sleepycat/je/tree/NameLN;
    invoke-virtual {v0}, Lcom/sleepycat/je/tree/NameLN;->getId()Lcom/sleepycat/je/dbi/DatabaseId;

    move-result-object v1

    .line 1790
    .local v1, "id":Lcom/sleepycat/je/dbi/DatabaseId;
    iget-object v2, p0, Lcom/sleepycat/je/dbi/DbTree$1Traversal;->val$nameMap:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/sleepycat/je/DatabaseEntry;->getData()[B

    move-result-object v3

    invoke-static {v3}, Lcom/sleepycat/utilint/StringUtils;->fromUTF8([B)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1791
    const/4 v2, 0x1

    return v2
.end method
