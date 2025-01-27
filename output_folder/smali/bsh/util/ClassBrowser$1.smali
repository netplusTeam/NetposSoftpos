.class Lbsh/util/ClassBrowser$1;
.super Ljava/lang/Object;
.source "ClassBrowser.java"

# interfaces
.implements Ljavax/swing/event/TreeSelectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbsh/util/ClassBrowser;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbsh/util/ClassBrowser;


# direct methods
.method constructor <init>(Lbsh/util/ClassBrowser;)V
    .locals 0
    .param p1, "this$0"    # Lbsh/util/ClassBrowser;

    .line 301
    iput-object p1, p0, Lbsh/util/ClassBrowser$1;->this$0:Lbsh/util/ClassBrowser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public valueChanged(Ljavax/swing/event/TreeSelectionEvent;)V
    .locals 6
    .param p1, "e"    # Ljavax/swing/event/TreeSelectionEvent;

    .line 303
    invoke-virtual {p1}, Ljavax/swing/event/TreeSelectionEvent;->getPath()Ljavax/swing/tree/TreePath;

    move-result-object v0

    .line 304
    .local v0, "tp":Ljavax/swing/tree/TreePath;
    invoke-virtual {v0}, Ljavax/swing/tree/TreePath;->getPath()[Ljava/lang/Object;

    move-result-object v1

    .line 305
    .local v1, "oa":[Ljava/lang/Object;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 306
    .local v2, "selectedPackage":Ljava/lang/StringBuffer;
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_1

    .line 307
    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 308
    add-int/lit8 v4, v3, 0x1

    array-length v5, v1

    if-ge v4, v5, :cond_0

    .line 309
    const-string v4, "."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 306
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 311
    .end local v3    # "i":I
    :cond_1
    iget-object v3, p0, Lbsh/util/ClassBrowser$1;->this$0:Lbsh/util/ClassBrowser;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lbsh/util/ClassBrowser;->setClist(Ljava/lang/String;)V

    .line 312
    return-void
.end method
