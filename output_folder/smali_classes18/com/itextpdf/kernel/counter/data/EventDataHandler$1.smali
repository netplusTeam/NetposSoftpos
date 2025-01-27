.class Lcom/itextpdf/kernel/counter/data/EventDataHandler$1;
.super Ljava/lang/Thread;
.source "EventDataHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itextpdf/kernel/counter/data/EventDataHandler;->tryProcessNextAsync(Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/itextpdf/kernel/counter/data/EventDataHandler;


# direct methods
.method constructor <init>(Lcom/itextpdf/kernel/counter/data/EventDataHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/itextpdf/kernel/counter/data/EventDataHandler;

    .line 144
    .local p0, "this":Lcom/itextpdf/kernel/counter/data/EventDataHandler$1;, "Lcom/itextpdf/kernel/counter/data/EventDataHandler$1;"
    iput-object p1, p0, Lcom/itextpdf/kernel/counter/data/EventDataHandler$1;->this$0:Lcom/itextpdf/kernel/counter/data/EventDataHandler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 147
    .local p0, "this":Lcom/itextpdf/kernel/counter/data/EventDataHandler$1;, "Lcom/itextpdf/kernel/counter/data/EventDataHandler$1;"
    iget-object v0, p0, Lcom/itextpdf/kernel/counter/data/EventDataHandler$1;->this$0:Lcom/itextpdf/kernel/counter/data/EventDataHandler;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/counter/data/EventDataHandler;->tryProcessNext()V

    .line 148
    return-void
.end method
