.class Lcom/sleepycat/je/util/verify/BtreeVerifier$1Traversal;
.super Ljava/lang/Object;
.source "BtreeVerifier.java"

# interfaces
.implements Lcom/sleepycat/je/dbi/CursorImpl$WithCursor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sleepycat/je/util/verify/BtreeVerifier;->verifyAll()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Traversal"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sleepycat/je/util/verify/BtreeVerifier;

.field final synthetic val$out:Ljava/io/PrintStream;


# direct methods
.method constructor <init>(Lcom/sleepycat/je/util/verify/BtreeVerifier;Ljava/io/PrintStream;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sleepycat/je/util/verify/BtreeVerifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 220
    iput-object p1, p0, Lcom/sleepycat/je/util/verify/BtreeVerifier$1Traversal;->this$0:Lcom/sleepycat/je/util/verify/BtreeVerifier;

    iput-object p2, p0, Lcom/sleepycat/je/util/verify/BtreeVerifier$1Traversal;->val$out:Ljava/io/PrintStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public withCursor(Lcom/sleepycat/je/dbi/CursorImpl;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Z
    .locals 6
    .param p1, "cursor"    # Lcom/sleepycat/je/dbi/CursorImpl;
    .param p2, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 228
    iget-object v0, p0, Lcom/sleepycat/je/util/verify/BtreeVerifier$1Traversal;->this$0:Lcom/sleepycat/je/util/verify/BtreeVerifier;

    invoke-static {v0}, Lcom/sleepycat/je/util/verify/BtreeVerifier;->access$000(Lcom/sleepycat/je/util/verify/BtreeVerifier;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    const/4 v0, 0x0

    return v0

    .line 232
    :cond_0
    nop

    .line 233
    invoke-static {}, Lcom/sleepycat/je/util/verify/BtreeVerifier;->access$100()Lcom/sleepycat/je/txn/LockType;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sleepycat/je/dbi/CursorImpl;->lockAndGetCurrentLN(Lcom/sleepycat/je/txn/LockType;)Lcom/sleepycat/je/tree/LN;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/tree/NameLN;

    .line 235
    .local v0, "nameLN":Lcom/sleepycat/je/tree/NameLN;
    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sleepycat/je/tree/NameLN;->isDeleted()Z

    move-result v2

    if-nez v2, :cond_1

    .line 237
    invoke-virtual {v0}, Lcom/sleepycat/je/tree/NameLN;->getId()Lcom/sleepycat/je/dbi/DatabaseId;

    move-result-object v2

    .line 239
    .local v2, "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    nop

    .line 240
    invoke-virtual {p2}, Lcom/sleepycat/je/DatabaseEntry;->getData()[B

    move-result-object v3

    invoke-static {v3}, Lcom/sleepycat/utilint/StringUtils;->fromUTF8([B)Ljava/lang/String;

    move-result-object v3

    .line 242
    .local v3, "dbName":Ljava/lang/String;
    iget-object v4, p0, Lcom/sleepycat/je/util/verify/BtreeVerifier$1Traversal;->this$0:Lcom/sleepycat/je/util/verify/BtreeVerifier;

    iget-object v5, p0, Lcom/sleepycat/je/util/verify/BtreeVerifier$1Traversal;->val$out:Ljava/io/PrintStream;

    invoke-static {v4, v3, v2, v5, v1}, Lcom/sleepycat/je/util/verify/BtreeVerifier;->access$200(Lcom/sleepycat/je/util/verify/BtreeVerifier;Ljava/lang/String;Lcom/sleepycat/je/dbi/DatabaseId;Ljava/io/PrintStream;Z)Lcom/sleepycat/je/BtreeStats;

    .line 244
    .end local v2    # "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    .end local v3    # "dbName":Ljava/lang/String;
    :cond_1
    return v1
.end method
