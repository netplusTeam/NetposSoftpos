.class Lbsh/util/JConsole$5;
.super Ljava/lang/Object;
.source "JConsole.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbsh/util/JConsole;->print(Ljava/lang/Object;Ljava/lang/String;ILjava/awt/Color;ZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbsh/util/JConsole;

.field final synthetic val$bold:Z

.field final synthetic val$color:Ljava/awt/Color;

.field final synthetic val$fontFamilyName:Ljava/lang/String;

.field final synthetic val$italic:Z

.field final synthetic val$o:Ljava/lang/Object;

.field final synthetic val$size:I

.field final synthetic val$underline:Z


# direct methods
.method constructor <init>(Lbsh/util/JConsole;Ljava/lang/String;ILjava/awt/Color;ZZZLjava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Lbsh/util/JConsole;

    .line 574
    iput-object p1, p0, Lbsh/util/JConsole$5;->this$0:Lbsh/util/JConsole;

    iput-object p2, p0, Lbsh/util/JConsole$5;->val$fontFamilyName:Ljava/lang/String;

    iput p3, p0, Lbsh/util/JConsole$5;->val$size:I

    iput-object p4, p0, Lbsh/util/JConsole$5;->val$color:Ljava/awt/Color;

    iput-boolean p5, p0, Lbsh/util/JConsole$5;->val$bold:Z

    iput-boolean p6, p0, Lbsh/util/JConsole$5;->val$italic:Z

    iput-boolean p7, p0, Lbsh/util/JConsole$5;->val$underline:Z

    iput-object p8, p0, Lbsh/util/JConsole$5;->val$o:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 576
    iget-object v0, p0, Lbsh/util/JConsole$5;->this$0:Lbsh/util/JConsole;

    invoke-static {v0}, Lbsh/util/JConsole;->access$500(Lbsh/util/JConsole;)Ljavax/swing/text/AttributeSet;

    move-result-object v0

    .line 577
    .local v0, "old":Ljavax/swing/text/AttributeSet;
    iget-object v1, p0, Lbsh/util/JConsole$5;->this$0:Lbsh/util/JConsole;

    iget-object v2, p0, Lbsh/util/JConsole$5;->val$fontFamilyName:Ljava/lang/String;

    iget v3, p0, Lbsh/util/JConsole$5;->val$size:I

    iget-object v4, p0, Lbsh/util/JConsole$5;->val$color:Ljava/awt/Color;

    iget-boolean v5, p0, Lbsh/util/JConsole$5;->val$bold:Z

    iget-boolean v6, p0, Lbsh/util/JConsole$5;->val$italic:Z

    iget-boolean v7, p0, Lbsh/util/JConsole$5;->val$underline:Z

    invoke-static/range {v1 .. v7}, Lbsh/util/JConsole;->access$800(Lbsh/util/JConsole;Ljava/lang/String;ILjava/awt/Color;ZZZ)Ljavax/swing/text/AttributeSet;

    .line 578
    iget-object v1, p0, Lbsh/util/JConsole$5;->this$0:Lbsh/util/JConsole;

    iget-object v2, p0, Lbsh/util/JConsole$5;->val$o:Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lbsh/util/JConsole;->access$300(Lbsh/util/JConsole;Ljava/lang/String;)V

    .line 579
    iget-object v1, p0, Lbsh/util/JConsole$5;->this$0:Lbsh/util/JConsole;

    invoke-static {v1}, Lbsh/util/JConsole;->access$400(Lbsh/util/JConsole;)V

    .line 580
    iget-object v1, p0, Lbsh/util/JConsole$5;->this$0:Lbsh/util/JConsole;

    invoke-static {v1}, Lbsh/util/JConsole;->access$000(Lbsh/util/JConsole;)Ljavax/swing/JTextPane;

    move-result-object v1

    iget-object v2, p0, Lbsh/util/JConsole$5;->this$0:Lbsh/util/JConsole;

    invoke-static {v2}, Lbsh/util/JConsole;->access$100(Lbsh/util/JConsole;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljavax/swing/JTextPane;->setCaretPosition(I)V

    .line 581
    iget-object v1, p0, Lbsh/util/JConsole$5;->this$0:Lbsh/util/JConsole;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lbsh/util/JConsole;->access$700(Lbsh/util/JConsole;Ljavax/swing/text/AttributeSet;Z)V

    .line 582
    return-void
.end method
