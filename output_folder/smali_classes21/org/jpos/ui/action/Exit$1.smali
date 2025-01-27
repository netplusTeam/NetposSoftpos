.class Lorg/jpos/ui/action/Exit$1;
.super Ljava/lang/Thread;
.source "Exit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jpos/ui/action/Exit;->actionPerformed(Ljava/awt/event/ActionEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jpos/ui/action/Exit;


# direct methods
.method constructor <init>(Lorg/jpos/ui/action/Exit;)V
    .locals 0
    .param p1, "this$0"    # Lorg/jpos/ui/action/Exit;

    .line 43
    iput-object p1, p0, Lorg/jpos/ui/action/Exit$1;->this$0:Lorg/jpos/ui/action/Exit;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 45
    iget-object v0, p0, Lorg/jpos/ui/action/Exit$1;->this$0:Lorg/jpos/ui/action/Exit;

    iget v0, v0, Lorg/jpos/ui/action/Exit;->exitCode:I

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 46
    return-void
.end method
