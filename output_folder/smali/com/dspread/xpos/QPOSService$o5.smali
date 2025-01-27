.class Lcom/dspread/xpos/QPOSService$o5;
.super Ljava/lang/Object;
.source "QPOSService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dspread/xpos/QPOSService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "o5"
.end annotation


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/dspread/xpos/bean/emvCofig/inter/a;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/dspread/xpos/QPOSService;


# direct methods
.method public constructor <init>(Lcom/dspread/xpos/QPOSService;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/dspread/xpos/bean/emvCofig/inter/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/dspread/xpos/QPOSService$o5;->b:Lcom/dspread/xpos/QPOSService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/dspread/xpos/QPOSService$o5;->a:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/dspread/xpos/QPOSService$o5;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    move v5, v2

    move v4, v3

    move v6, v4

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/dspread/xpos/bean/emvCofig/inter/a;

    .line 3
    instance-of v8, v7, Lcom/dspread/xpos/bean/emvCofig/a;

    const-string v9, ":"

    const/4 v10, 0x0

    if-eqz v8, :cond_5

    if-nez v4, :cond_3

    .line 5
    iget-object v4, p0, Lcom/dspread/xpos/QPOSService$o5;->b:Lcom/dspread/xpos/QPOSService;

    invoke-static {v4}, Lcom/dspread/xpos/QPOSService;->c(Lcom/dspread/xpos/QPOSService;)Lcom/dspread/xpos/o0;

    move-result-object v4

    iget-object v8, p0, Lcom/dspread/xpos/QPOSService$o5;->b:Lcom/dspread/xpos/QPOSService;

    iget-object v8, v8, Lcom/dspread/xpos/QPOSService;->pos:Lcom/dspread/xpos/Vpos;

    sget-object v11, Lcom/dspread/xpos/QPOSService$EMVDataOperation;->Clear:Lcom/dspread/xpos/QPOSService$EMVDataOperation;

    invoke-virtual {v4, v8, v11, v10, v3}, Lcom/dspread/xpos/o0;->a(Lcom/dspread/xpos/Vpos;Lcom/dspread/xpos/QPOSService$EMVDataOperation;Ljava/lang/String;I)Lcom/dspread/xpos/j;

    move-result-object v4

    .line 6
    iget-object v8, p0, Lcom/dspread/xpos/QPOSService$o5;->b:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v8, v4}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v4}, Lcom/dspread/xpos/j;->f()B

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    move v4, v2

    goto :goto_2

    .line 8
    :cond_2
    :goto_1
    const-string v1, "AID cleanup failed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_5

    .line 13
    :cond_3
    :goto_2
    iget-object v8, p0, Lcom/dspread/xpos/QPOSService$o5;->b:Lcom/dspread/xpos/QPOSService;

    invoke-static {v8}, Lcom/dspread/xpos/QPOSService;->c(Lcom/dspread/xpos/QPOSService;)Lcom/dspread/xpos/o0;

    move-result-object v8

    iget-object v11, p0, Lcom/dspread/xpos/QPOSService$o5;->b:Lcom/dspread/xpos/QPOSService;

    iget-object v11, v11, Lcom/dspread/xpos/QPOSService;->pos:Lcom/dspread/xpos/Vpos;

    sget-object v12, Lcom/dspread/xpos/QPOSService$EMVDataOperation;->Add:Lcom/dspread/xpos/QPOSService$EMVDataOperation;

    move-object v13, v7

    check-cast v13, Lcom/dspread/xpos/bean/emvCofig/a;

    invoke-virtual {v13}, Lcom/dspread/xpos/bean/emvCofig/a;->d()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v11, v12, v14, v3}, Lcom/dspread/xpos/o0;->a(Lcom/dspread/xpos/Vpos;Lcom/dspread/xpos/QPOSService$EMVDataOperation;Ljava/lang/String;I)Lcom/dspread/xpos/j;

    move-result-object v8

    .line 14
    iget-object v11, p0, Lcom/dspread/xpos/QPOSService$o5;->b:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v11, v8}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-virtual {v8}, Lcom/dspread/xpos/j;->f()B

    move-result v8

    if-eqz v8, :cond_5

    .line 16
    :cond_4
    invoke-virtual {v13}, Lcom/dspread/xpos/bean/emvCofig/a;->c()Ljava/lang/String;

    move-result-object v5

    .line 17
    const-string v7, "AID"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v5, v3

    goto :goto_0

    .line 21
    :cond_5
    instance-of v8, v7, Lcom/dspread/xpos/bean/emvCofig/b;

    if-eqz v8, :cond_0

    if-nez v6, :cond_8

    .line 23
    iget-object v6, p0, Lcom/dspread/xpos/QPOSService$o5;->b:Lcom/dspread/xpos/QPOSService;

    invoke-static {v6}, Lcom/dspread/xpos/QPOSService;->c(Lcom/dspread/xpos/QPOSService;)Lcom/dspread/xpos/o0;

    move-result-object v6

    iget-object v8, p0, Lcom/dspread/xpos/QPOSService$o5;->b:Lcom/dspread/xpos/QPOSService;

    iget-object v8, v8, Lcom/dspread/xpos/QPOSService;->pos:Lcom/dspread/xpos/Vpos;

    sget-object v11, Lcom/dspread/xpos/QPOSService$EMVDataOperation;->Clear:Lcom/dspread/xpos/QPOSService$EMVDataOperation;

    invoke-virtual {v6, v8, v11, v10, v2}, Lcom/dspread/xpos/o0;->a(Lcom/dspread/xpos/Vpos;Lcom/dspread/xpos/QPOSService$EMVDataOperation;Ljava/lang/String;I)Lcom/dspread/xpos/j;

    move-result-object v6

    .line 24
    iget-object v8, p0, Lcom/dspread/xpos/QPOSService$o5;->b:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v8, v6}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-virtual {v6}, Lcom/dspread/xpos/j;->f()B

    move-result v6

    if-eqz v6, :cond_6

    goto :goto_3

    :cond_6
    move v6, v2

    goto :goto_4

    .line 26
    :cond_7
    :goto_3
    const-string v1, "RID cleanup failed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5

    .line 31
    :cond_8
    :goto_4
    iget-object v8, p0, Lcom/dspread/xpos/QPOSService$o5;->b:Lcom/dspread/xpos/QPOSService;

    invoke-static {v8}, Lcom/dspread/xpos/QPOSService;->c(Lcom/dspread/xpos/QPOSService;)Lcom/dspread/xpos/o0;

    move-result-object v8

    iget-object v10, p0, Lcom/dspread/xpos/QPOSService$o5;->b:Lcom/dspread/xpos/QPOSService;

    iget-object v10, v10, Lcom/dspread/xpos/QPOSService;->pos:Lcom/dspread/xpos/Vpos;

    sget-object v11, Lcom/dspread/xpos/QPOSService$EMVDataOperation;->Add:Lcom/dspread/xpos/QPOSService$EMVDataOperation;

    check-cast v7, Lcom/dspread/xpos/bean/emvCofig/b;

    invoke-virtual {v7}, Lcom/dspread/xpos/bean/emvCofig/b;->c()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v10, v11, v12, v2}, Lcom/dspread/xpos/o0;->a(Lcom/dspread/xpos/Vpos;Lcom/dspread/xpos/QPOSService$EMVDataOperation;Ljava/lang/String;I)Lcom/dspread/xpos/j;

    move-result-object v8

    .line 32
    iget-object v10, p0, Lcom/dspread/xpos/QPOSService$o5;->b:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v10, v8}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-virtual {v8}, Lcom/dspread/xpos/j;->f()B

    move-result v8

    if-eqz v8, :cond_0

    .line 34
    :cond_9
    invoke-virtual {v7}, Lcom/dspread/xpos/bean/emvCofig/b;->d()Ljava/lang/String;

    move-result-object v5

    .line 35
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "RID=="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 36
    const-string v7, "RID"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v5, v3

    goto/16 :goto_0

    .line 2
    :cond_a
    move v3, v5

    .line 41
    :goto_5
    iget-object v1, p0, Lcom/dspread/xpos/QPOSService$o5;->b:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lcom/dspread/xpos/QPOSService;->i(ZLjava/lang/String;)V

    return-void
.end method
