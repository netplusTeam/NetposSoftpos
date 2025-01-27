.class Ljdbm/btree/BTree$EmptyBrowser;
.super Ljdbm/helper/TupleBrowser;
.source "BTree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljdbm/btree/BTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EmptyBrowser"
.end annotation


# static fields
.field static INSTANCE:Ljdbm/helper/TupleBrowser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 590
    new-instance v0, Ljdbm/btree/BTree$EmptyBrowser;

    invoke-direct {v0}, Ljdbm/btree/BTree$EmptyBrowser;-><init>()V

    sput-object v0, Ljdbm/btree/BTree$EmptyBrowser;->INSTANCE:Ljdbm/helper/TupleBrowser;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 586
    invoke-direct {p0}, Ljdbm/helper/TupleBrowser;-><init>()V

    return-void
.end method


# virtual methods
.method public getNext(Ljdbm/helper/Tuple;)Z
    .locals 1
    .param p1, "tuple"    # Ljdbm/helper/Tuple;

    .line 594
    const/4 v0, 0x0

    return v0
.end method

.method public getPrevious(Ljdbm/helper/Tuple;)Z
    .locals 1
    .param p1, "tuple"    # Ljdbm/helper/Tuple;

    .line 599
    const/4 v0, 0x0

    return v0
.end method
