.class Lcom/sleepycat/je/Database$1;
.super Ljava/lang/Object;
.source "Database.java"

# interfaces
.implements Lcom/sleepycat/je/SecondaryAssociation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sleepycat/je/Database;->makeSecondaryAssociation()Lcom/sleepycat/je/SecondaryAssociation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sleepycat/je/Database;


# direct methods
.method constructor <init>(Lcom/sleepycat/je/Database;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sleepycat/je/Database;

    .line 227
    iput-object p1, p0, Lcom/sleepycat/je/Database$1;->this$0:Lcom/sleepycat/je/Database;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPrimary(Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/je/Database;
    .locals 1
    .param p1, "primaryKey"    # Lcom/sleepycat/je/DatabaseEntry;

    .line 235
    iget-object v0, p0, Lcom/sleepycat/je/Database$1;->this$0:Lcom/sleepycat/je/Database;

    return-object v0
.end method

.method public getSecondaries(Lcom/sleepycat/je/DatabaseEntry;)Ljava/util/Collection;
    .locals 1
    .param p1, "primaryKey"    # Lcom/sleepycat/je/DatabaseEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/DatabaseEntry;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/sleepycat/je/SecondaryDatabase;",
            ">;"
        }
    .end annotation

    .line 241
    iget-object v0, p0, Lcom/sleepycat/je/Database$1;->this$0:Lcom/sleepycat/je/Database;

    iget-object v0, v0, Lcom/sleepycat/je/Database;->simpleAssocSecondaries:Ljava/util/Collection;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/sleepycat/je/Database$1;->this$0:Lcom/sleepycat/je/Database;

    iget-object v0, v0, Lcom/sleepycat/je/Database;->simpleAssocSecondaries:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    return v0
.end method
