.class Lbsh/util/ClassBrowser$2;
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

    .line 362
    iput-object p1, p0, Lbsh/util/ClassBrowser$2;->this$0:Lbsh/util/ClassBrowser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public valueChanged(Ljavax/swing/event/TreeSelectionEvent;)V
    .locals 2
    .param p1, "e"    # Ljavax/swing/event/TreeSelectionEvent;

    .line 364
    iget-object v0, p0, Lbsh/util/ClassBrowser$2;->this$0:Lbsh/util/ClassBrowser;

    invoke-virtual {p1}, Ljavax/swing/event/TreeSelectionEvent;->getPath()Ljavax/swing/tree/TreePath;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/swing/tree/TreePath;->getLastPathComponent()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbsh/util/ClassBrowser;->driveToClass(Ljava/lang/String;)V

    .line 365
    return-void
.end method
