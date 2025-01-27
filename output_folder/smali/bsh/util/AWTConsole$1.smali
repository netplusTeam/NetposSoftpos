.class final Lbsh/util/AWTConsole$1;
.super Ljava/awt/event/WindowAdapter;
.source "AWTConsole.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbsh/util/AWTConsole;->main([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$f:Ljava/awt/Frame;


# direct methods
.method constructor <init>(Ljava/awt/Frame;)V
    .locals 0

    .line 323
    iput-object p1, p0, Lbsh/util/AWTConsole$1;->val$f:Ljava/awt/Frame;

    invoke-direct {p0}, Ljava/awt/event/WindowAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public windowClosing(Ljava/awt/event/WindowEvent;)V
    .locals 1
    .param p1, "e"    # Ljava/awt/event/WindowEvent;

    .line 325
    iget-object v0, p0, Lbsh/util/AWTConsole$1;->val$f:Ljava/awt/Frame;

    invoke-virtual {v0}, Ljava/awt/Frame;->dispose()V

    .line 326
    return-void
.end method
