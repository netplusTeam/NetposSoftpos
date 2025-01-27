.class Lorg/jline/widget/Widgets$1;
.super Ljava/lang/Object;
.source "Widgets.java"

# interfaces
.implements Lorg/jline/reader/Widget;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jline/widget/Widgets;->namedWidget(Ljava/lang/String;Lorg/jline/reader/Widget;)Lorg/jline/reader/Widget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jline/widget/Widgets;

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$widget:Lorg/jline/reader/Widget;


# direct methods
.method constructor <init>(Lorg/jline/widget/Widgets;Ljava/lang/String;Lorg/jline/reader/Widget;)V
    .locals 0
    .param p1, "this$0"    # Lorg/jline/widget/Widgets;

    .line 61
    iput-object p1, p0, Lorg/jline/widget/Widgets$1;->this$0:Lorg/jline/widget/Widgets;

    iput-object p2, p0, Lorg/jline/widget/Widgets$1;->val$name:Ljava/lang/String;

    iput-object p3, p0, Lorg/jline/widget/Widgets$1;->val$widget:Lorg/jline/reader/Widget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply()Z
    .locals 1

    .line 68
    iget-object v0, p0, Lorg/jline/widget/Widgets$1;->val$widget:Lorg/jline/reader/Widget;

    invoke-interface {v0}, Lorg/jline/reader/Widget;->apply()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lorg/jline/widget/Widgets$1;->val$name:Ljava/lang/String;

    return-object v0
.end method
