.class Lorg/jline/builtins/telnet/TelnetIO$IACHandler;
.super Ljava/lang/Object;
.source "TelnetIO.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jline/builtins/telnet/TelnetIO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IACHandler"
.end annotation


# instance fields
.field private DO_ECHO:Z

.field private DO_LINEMODE:Z

.field private DO_NAWS:Z

.field private DO_NEWENV:Z

.field private DO_SUPGA:Z

.field private DO_TTYPE:Z

.field private WAIT_DO_REPLY_ECHO:Z

.field private WAIT_DO_REPLY_LINEMODE:Z

.field private WAIT_DO_REPLY_NAWS:Z

.field private WAIT_DO_REPLY_NEWENV:Z

.field private WAIT_DO_REPLY_SUPGA:Z

.field private WAIT_DO_REPLY_TTYPE:Z

.field private WAIT_LM_DO_REPLY_FORWARDMASK:Z

.field private WAIT_LM_MODE_ACK:Z

.field private WAIT_NE_SEND_REPLY:Z

.field private WAIT_WILL_REPLY_ECHO:Z

.field private WAIT_WILL_REPLY_NAWS:Z

.field private WAIT_WILL_REPLY_SUPGA:Z

.field private WAIT_WILL_REPLY_TTYPE:Z

.field private buffer:[I

.field final synthetic this$0:Lorg/jline/builtins/telnet/TelnetIO;


# direct methods
.method constructor <init>(Lorg/jline/builtins/telnet/TelnetIO;)V
    .locals 1
    .param p1, "this$0"    # Lorg/jline/builtins/telnet/TelnetIO;

    .line 651
    iput-object p1, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->this$0:Lorg/jline/builtins/telnet/TelnetIO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 658
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->buffer:[I

    .line 663
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->DO_ECHO:Z

    .line 668
    iput-boolean v0, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->DO_SUPGA:Z

    .line 673
    iput-boolean v0, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->DO_NAWS:Z

    .line 678
    iput-boolean v0, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->DO_TTYPE:Z

    .line 683
    iput-boolean v0, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->DO_LINEMODE:Z

    .line 688
    iput-boolean v0, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->DO_NEWENV:Z

    .line 693
    iput-boolean v0, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->WAIT_DO_REPLY_SUPGA:Z

    .line 694
    iput-boolean v0, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->WAIT_DO_REPLY_ECHO:Z

    .line 695
    iput-boolean v0, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->WAIT_DO_REPLY_NAWS:Z

    .line 696
    iput-boolean v0, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->WAIT_DO_REPLY_TTYPE:Z

    .line 697
    iput-boolean v0, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->WAIT_DO_REPLY_LINEMODE:Z

    .line 698
    iput-boolean v0, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->WAIT_LM_MODE_ACK:Z

    .line 699
    iput-boolean v0, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->WAIT_LM_DO_REPLY_FORWARDMASK:Z

    .line 700
    iput-boolean v0, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->WAIT_DO_REPLY_NEWENV:Z

    .line 701
    iput-boolean v0, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->WAIT_NE_SEND_REPLY:Z

    .line 706
    iput-boolean v0, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->WAIT_WILL_REPLY_SUPGA:Z

    .line 707
    iput-boolean v0, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->WAIT_WILL_REPLY_ECHO:Z

    .line 708
    iput-boolean v0, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->WAIT_WILL_REPLY_NAWS:Z

    .line 709
    iput-boolean v0, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->WAIT_WILL_REPLY_TTYPE:Z

    return-void
.end method

.method private enable(I)V
    .locals 3
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1367
    const/4 v0, 0x1

    const/4 v1, 0x0

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 1408
    :sswitch_0
    iget-boolean v2, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->DO_NEWENV:Z

    if-eqz v2, :cond_0

    .line 1409
    iput-boolean v1, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->DO_NEWENV:Z

    goto :goto_0

    .line 1411
    :cond_0
    iput-boolean v0, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->DO_NEWENV:Z

    .line 1412
    invoke-direct {p0}, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->negotiateEnvironment()V

    goto :goto_0

    .line 1398
    :sswitch_1
    iget-boolean v2, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->DO_LINEMODE:Z

    if-eqz v2, :cond_1

    .line 1399
    iput-boolean v1, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->DO_LINEMODE:Z

    .line 1401
    iget-object v0, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->this$0:Lorg/jline/builtins/telnet/TelnetIO;

    invoke-static {v0}, Lorg/jline/builtins/telnet/TelnetIO;->access$600(Lorg/jline/builtins/telnet/TelnetIO;)Lorg/jline/builtins/telnet/ConnectionData;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/jline/builtins/telnet/ConnectionData;->setLineMode(Z)V

    goto :goto_0

    .line 1403
    :cond_1
    iput-boolean v0, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->DO_LINEMODE:Z

    .line 1404
    invoke-virtual {p0}, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->negotiateLineMode()V

    .line 1406
    goto :goto_0

    .line 1383
    :sswitch_2
    iget-boolean v2, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->DO_NAWS:Z

    if-eqz v2, :cond_2

    .line 1384
    iput-boolean v1, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->DO_NAWS:Z

    goto :goto_0

    .line 1386
    :cond_2
    iput-boolean v0, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->DO_NAWS:Z

    .line 1388
    goto :goto_0

    .line 1390
    :sswitch_3
    iget-boolean v2, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->DO_TTYPE:Z

    if-eqz v2, :cond_3

    .line 1391
    iput-boolean v1, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->DO_TTYPE:Z

    goto :goto_0

    .line 1393
    :cond_3
    iput-boolean v0, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->DO_TTYPE:Z

    .line 1394
    invoke-virtual {p0}, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->getTTYPE()V

    .line 1396
    goto :goto_0

    .line 1369
    :sswitch_4
    iget-boolean v2, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->DO_SUPGA:Z

    if-eqz v2, :cond_4

    .line 1370
    iput-boolean v1, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->DO_SUPGA:Z

    goto :goto_0

    .line 1372
    :cond_4
    iput-boolean v0, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->DO_SUPGA:Z

    .line 1374
    goto :goto_0

    .line 1376
    :sswitch_5
    iget-boolean v2, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->DO_ECHO:Z

    if-eqz v2, :cond_5

    .line 1377
    iput-boolean v1, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->DO_ECHO:Z

    goto :goto_0

    .line 1379
    :cond_5
    iput-boolean v0, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->DO_ECHO:Z

    .line 1381
    nop

    .line 1416
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_5
        0x3 -> :sswitch_4
        0x18 -> :sswitch_3
        0x1f -> :sswitch_2
        0x22 -> :sswitch_1
        0x27 -> :sswitch_0
    .end sparse-switch
.end method

.method private handleNAWS()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 875
    iget-object v0, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->this$0:Lorg/jline/builtins/telnet/TelnetIO;

    invoke-static {v0}, Lorg/jline/builtins/telnet/TelnetIO;->access$300(Lorg/jline/builtins/telnet/TelnetIO;)I

    move-result v0

    .line 876
    .local v0, "width":I
    const/16 v1, 0xff

    if-ne v0, v1, :cond_0

    .line 877
    iget-object v2, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->this$0:Lorg/jline/builtins/telnet/TelnetIO;

    invoke-static {v2}, Lorg/jline/builtins/telnet/TelnetIO;->access$300(Lorg/jline/builtins/telnet/TelnetIO;)I

    move-result v0

    .line 879
    :cond_0
    iget-object v2, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->this$0:Lorg/jline/builtins/telnet/TelnetIO;

    invoke-static {v2}, Lorg/jline/builtins/telnet/TelnetIO;->access$300(Lorg/jline/builtins/telnet/TelnetIO;)I

    move-result v2

    .line 880
    .local v2, "height":I
    if-ne v2, v1, :cond_1

    .line 881
    iget-object v1, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->this$0:Lorg/jline/builtins/telnet/TelnetIO;

    invoke-static {v1}, Lorg/jline/builtins/telnet/TelnetIO;->access$300(Lorg/jline/builtins/telnet/TelnetIO;)I

    move-result v2

    .line 883
    :cond_1
    invoke-direct {p0}, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->skipToSE()V

    .line 884
    iget-object v1, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->this$0:Lorg/jline/builtins/telnet/TelnetIO;

    invoke-static {v1, v0, v2}, Lorg/jline/builtins/telnet/TelnetIO;->access$400(Lorg/jline/builtins/telnet/TelnetIO;II)V

    .line 885
    return-void
.end method

.method private handleTTYPE()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 892
    const-string v0, ""

    .line 895
    .local v0, "tmpstr":Ljava/lang/String;
    iget-object v1, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->this$0:Lorg/jline/builtins/telnet/TelnetIO;

    invoke-static {v1}, Lorg/jline/builtins/telnet/TelnetIO;->access$000(Lorg/jline/builtins/telnet/TelnetIO;)I

    .line 896
    const/16 v1, 0x28

    invoke-direct {p0, v1}, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->readIACSETerminatedString(I)Ljava/lang/String;

    move-result-object v0

    .line 897
    invoke-static {}, Lorg/jline/builtins/telnet/TelnetIO;->access$500()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Reported terminal name "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 898
    iget-object v1, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->this$0:Lorg/jline/builtins/telnet/TelnetIO;

    invoke-static {v1}, Lorg/jline/builtins/telnet/TelnetIO;->access$600(Lorg/jline/builtins/telnet/TelnetIO;)Lorg/jline/builtins/telnet/ConnectionData;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/jline/builtins/telnet/ConnectionData;->setNegotiatedTerminalType(Ljava/lang/String;)V

    .line 899
    return-void
.end method

.method private isEnabled(I)Z
    .locals 1
    .param p1, "i"    # I

    .line 1426
    sparse-switch p1, :sswitch_data_0

    .line 1440
    const/4 v0, 0x0

    return v0

    .line 1438
    :sswitch_0
    iget-boolean v0, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->DO_NEWENV:Z

    return v0

    .line 1436
    :sswitch_1
    iget-boolean v0, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->DO_LINEMODE:Z

    return v0

    .line 1432
    :sswitch_2
    iget-boolean v0, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->DO_NAWS:Z

    return v0

    .line 1434
    :sswitch_3
    iget-boolean v0, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->DO_TTYPE:Z

    return v0

    .line 1428
    :sswitch_4
    iget-boolean v0, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->DO_SUPGA:Z

    return v0

    .line 1430
    :sswitch_5
    iget-boolean v0, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->DO_ECHO:Z

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_5
        0x3 -> :sswitch_4
        0x18 -> :sswitch_3
        0x1f -> :sswitch_2
        0x22 -> :sswitch_1
        0x27 -> :sswitch_0
    .end sparse-switch
.end method

.method private negotiateEnvironment()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1250
    const/16 v0, 0x27

    invoke-direct {p0, v0}, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1251
    iget-object v1, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->this$0:Lorg/jline/builtins/telnet/TelnetIO;

    const/16 v2, 0xff

    invoke-static {v1, v2}, Lorg/jline/builtins/telnet/TelnetIO;->access$700(Lorg/jline/builtins/telnet/TelnetIO;I)V

    .line 1252
    iget-object v1, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->this$0:Lorg/jline/builtins/telnet/TelnetIO;

    const/16 v3, 0xfa

    invoke-static {v1, v3}, Lorg/jline/builtins/telnet/TelnetIO;->access$700(Lorg/jline/builtins/telnet/TelnetIO;I)V

    .line 1253
    iget-object v1, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->this$0:Lorg/jline/builtins/telnet/TelnetIO;

    invoke-static {v1, v0}, Lorg/jline/builtins/telnet/TelnetIO;->access$700(Lorg/jline/builtins/telnet/TelnetIO;I)V

    .line 1254
    iget-object v0, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->this$0:Lorg/jline/builtins/telnet/TelnetIO;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/jline/builtins/telnet/TelnetIO;->access$700(Lorg/jline/builtins/telnet/TelnetIO;I)V

    .line 1255
    iget-object v0, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->this$0:Lorg/jline/builtins/telnet/TelnetIO;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lorg/jline/builtins/telnet/TelnetIO;->access$700(Lorg/jline/builtins/telnet/TelnetIO;I)V

    .line 1256
    iget-object v0, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->this$0:Lorg/jline/builtins/telnet/TelnetIO;

    const/4 v3, 0x3

    invoke-static {v0, v3}, Lorg/jline/builtins/telnet/TelnetIO;->access$700(Lorg/jline/builtins/telnet/TelnetIO;I)V

    .line 1257
    iget-object v0, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->this$0:Lorg/jline/builtins/telnet/TelnetIO;

    invoke-static {v0, v2}, Lorg/jline/builtins/telnet/TelnetIO;->access$700(Lorg/jline/builtins/telnet/TelnetIO;I)V

    .line 1258
    iget-object v0, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->this$0:Lorg/jline/builtins/telnet/TelnetIO;

    const/16 v2, 0xf0

    invoke-static {v0, v2}, Lorg/jline/builtins/telnet/TelnetIO;->access$700(Lorg/jline/builtins/telnet/TelnetIO;I)V

    .line 1259
    iput-boolean v1, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->WAIT_NE_SEND_REPLY:Z

    .line 1260
    iget-object v0, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->this$0:Lorg/jline/builtins/telnet/TelnetIO;

    invoke-virtual {v0}, Lorg/jline/builtins/telnet/TelnetIO;->flush()V

    .line 1262
    :cond_0
    return-void
.end method

.method private parse([I)V
    .locals 5
    .param p1, "buf"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 783
    const/4 v0, 0x0

    aget v1, p1, v0

    const/16 v2, 0xfb

    const/16 v3, 0xfd

    const/4 v4, 0x1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_1

    .line 830
    :sswitch_0
    aget v1, p1, v4

    invoke-direct {p0, v1}, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->waitWILLreply(I)Z

    move-result v1

    if-eqz v1, :cond_0

    aget v1, p1, v4

    invoke-direct {p0, v1}, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->supported(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 831
    aget v1, p1, v4

    invoke-direct {p0, v2, v1, v0}, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->setWait(IIZ)V

    goto/16 :goto_1

    .line 833
    :cond_0
    aget v0, p1, v4

    invoke-direct {p0, v0}, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->supported(I)Z

    move-result v0

    if-eqz v0, :cond_8

    aget v0, p1, v4

    invoke-direct {p0, v0}, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 835
    aget v0, p1, v4

    invoke-direct {p0, v0}, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->enable(I)V

    goto/16 :goto_1

    .line 813
    :sswitch_1
    aget v1, p1, v4

    invoke-direct {p0, v1}, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->supported(I)Z

    move-result v1

    if-eqz v1, :cond_1

    aget v1, p1, v4

    invoke-direct {p0, v1}, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_1

    .line 816
    :cond_1
    aget v1, p1, v4

    invoke-direct {p0, v1}, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->waitWILLreply(I)Z

    move-result v1

    if-eqz v1, :cond_2

    aget v1, p1, v4

    invoke-direct {p0, v1}, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->supported(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 817
    aget v1, p1, v4

    invoke-direct {p0, v1}, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->enable(I)V

    .line 818
    aget v1, p1, v4

    invoke-direct {p0, v2, v1, v0}, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->setWait(IIZ)V

    goto/16 :goto_1

    .line 820
    :cond_2
    aget v1, p1, v4

    invoke-direct {p0, v1}, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->supported(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 821
    aget v1, p1, v4

    invoke-direct {p0, v2, v1, v0}, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->sendCommand(IIZ)V

    .line 822
    aget v0, p1, v4

    invoke-direct {p0, v0}, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->enable(I)V

    goto/16 :goto_1

    .line 824
    :cond_3
    const/16 v1, 0xfc

    aget v2, p1, v4

    invoke-direct {p0, v1, v2, v0}, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->sendCommand(IIZ)V

    .line 828
    goto/16 :goto_1

    .line 803
    :sswitch_2
    aget v1, p1, v4

    invoke-direct {p0, v1}, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->waitDOreply(I)Z

    move-result v1

    if-eqz v1, :cond_4

    aget v1, p1, v4

    invoke-direct {p0, v1}, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->supported(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 804
    aget v1, p1, v4

    invoke-direct {p0, v3, v1, v0}, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->setWait(IIZ)V

    goto/16 :goto_1

    .line 806
    :cond_4
    aget v0, p1, v4

    invoke-direct {p0, v0}, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->supported(I)Z

    move-result v0

    if-eqz v0, :cond_8

    aget v0, p1, v4

    invoke-direct {p0, v0}, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 808
    aget v0, p1, v4

    invoke-direct {p0, v0}, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->enable(I)V

    goto/16 :goto_1

    .line 786
    :sswitch_3
    aget v1, p1, v4

    invoke-direct {p0, v1}, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->supported(I)Z

    move-result v1

    if-eqz v1, :cond_5

    aget v1, p1, v4

    invoke-direct {p0, v1}, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_1

    .line 789
    :cond_5
    aget v1, p1, v4

    invoke-direct {p0, v1}, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->waitDOreply(I)Z

    move-result v1

    if-eqz v1, :cond_6

    aget v1, p1, v4

    invoke-direct {p0, v1}, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->supported(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 790
    aget v1, p1, v4

    invoke-direct {p0, v1}, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->enable(I)V

    .line 791
    aget v1, p1, v4

    invoke-direct {p0, v3, v1, v0}, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->setWait(IIZ)V

    goto :goto_1

    .line 793
    :cond_6
    aget v1, p1, v4

    invoke-direct {p0, v1}, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->supported(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 794
    aget v1, p1, v4

    invoke-direct {p0, v3, v1, v0}, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->sendCommand(IIZ)V

    .line 795
    aget v0, p1, v4

    invoke-direct {p0, v0}, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->enable(I)V

    goto :goto_1

    .line 797
    :cond_7
    const/16 v1, 0xfe

    aget v2, p1, v4

    invoke-direct {p0, v1, v2, v0}, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->sendCommand(IIZ)V

    .line 801
    goto :goto_1

    .line 844
    :sswitch_4
    aget v0, p1, v4

    invoke-direct {p0, v0}, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->supported(I)Z

    move-result v0

    if-eqz v0, :cond_8

    aget v0, p1, v4

    invoke-direct {p0, v0}, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 845
    aget v0, p1, v4

    sparse-switch v0, :sswitch_data_1

    .line 857
    goto :goto_0

    .line 856
    :sswitch_5
    invoke-virtual {p0}, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->handleNEWENV()V

    .line 857
    :goto_0
    goto :goto_1

    .line 853
    :sswitch_6
    invoke-virtual {p0}, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->handleLINEMODE()V

    .line 854
    goto :goto_1

    .line 847
    :sswitch_7
    invoke-direct {p0}, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->handleNAWS()V

    .line 848
    goto :goto_1

    .line 850
    :sswitch_8
    invoke-direct {p0}, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->handleTTYPE()V

    .line 851
    goto :goto_1

    .line 842
    :sswitch_9
    nop

    .line 868
    :cond_8
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0xf2 -> :sswitch_9
        0xfa -> :sswitch_4
        0xfb -> :sswitch_3
        0xfc -> :sswitch_2
        0xfd -> :sswitch_1
        0xfe -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x18 -> :sswitch_8
        0x1f -> :sswitch_7
        0x22 -> :sswitch_6
        0x27 -> :sswitch_5
    .end sparse-switch
.end method

.method private parseTWO([I)Z
    .locals 2
    .param p1, "buf"    # [I

    .line 754
    const/4 v0, 0x0

    aget v1, p1, v0

    packed-switch v1, :pswitch_data_0

    .line 772
    :pswitch_0
    return v0

    .line 758
    :pswitch_1
    goto :goto_0

    .line 760
    :pswitch_2
    iget-object v0, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->this$0:Lorg/jline/builtins/telnet/TelnetIO;

    invoke-static {v0}, Lorg/jline/builtins/telnet/TelnetIO;->access$100(Lorg/jline/builtins/telnet/TelnetIO;)V

    .line 761
    goto :goto_0

    .line 769
    :pswitch_3
    iget-object v0, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->this$0:Lorg/jline/builtins/telnet/TelnetIO;

    invoke-static {v0}, Lorg/jline/builtins/telnet/TelnetIO;->access$200(Lorg/jline/builtins/telnet/TelnetIO;)V

    .line 770
    goto :goto_0

    .line 767
    :pswitch_4
    nop

    .line 774
    :goto_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0xf1
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_2
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private readIACSETerminatedString(I)Ljava/lang/String;
    .locals 7
    .param p1, "maxlength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1290
    const/4 v0, 0x0

    .line 1291
    .local v0, "where":I
    new-array v1, p1, [C

    .line 1292
    .local v1, "cbuf":[C
    const/16 v2, 0x20

    .line 1293
    .local v2, "b":C
    const/4 v3, 0x1

    .line 1297
    .local v3, "cont":Z
    :goto_0
    iget-object v4, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->this$0:Lorg/jline/builtins/telnet/TelnetIO;

    invoke-static {v4}, Lorg/jline/builtins/telnet/TelnetIO;->access$000(Lorg/jline/builtins/telnet/TelnetIO;)I

    move-result v4

    .line 1298
    .local v4, "i":I
    sparse-switch v4, :sswitch_data_0

    goto :goto_1

    .line 1300
    :sswitch_0
    iget-object v5, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->this$0:Lorg/jline/builtins/telnet/TelnetIO;

    invoke-static {v5}, Lorg/jline/builtins/telnet/TelnetIO;->access$000(Lorg/jline/builtins/telnet/TelnetIO;)I

    move-result v4

    .line 1301
    const/16 v5, 0xf0

    if-ne v4, v5, :cond_0

    .line 1302
    const/4 v3, 0x0

    goto :goto_1

    .line 1306
    :sswitch_1
    new-instance v5, Ljava/lang/String;

    const-string v6, "default"

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v5

    .line 1309
    :cond_0
    :goto_1
    if-eqz v3, :cond_3

    .line 1310
    int-to-char v2, v4

    .line 1312
    const/16 v5, 0xa

    if-eq v2, v5, :cond_2

    const/16 v5, 0xd

    if-eq v2, v5, :cond_2

    if-ne v0, p1, :cond_1

    goto :goto_2

    .line 1315
    :cond_1
    add-int/lit8 v5, v0, 0x1

    .end local v0    # "where":I
    .local v5, "where":I
    aput-char v2, v1, v0

    move v0, v5

    goto :goto_3

    .line 1313
    .end local v5    # "where":I
    .restart local v0    # "where":I
    :cond_2
    :goto_2
    const/4 v3, 0x0

    .line 1318
    .end local v4    # "i":I
    :cond_3
    :goto_3
    if-nez v3, :cond_4

    .line 1320
    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v4, v1, v5, v0}, Ljava/lang/String;-><init>([CII)V

    return-object v4

    .line 1318
    :cond_4
    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_1
        0xff -> :sswitch_0
    .end sparse-switch
.end method

.method private readNEVariableName(Ljava/lang/StringBuffer;)I
    .locals 6
    .param p1, "sbuf"    # Ljava/lang/StringBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1016
    invoke-static {}, Lorg/jline/builtins/telnet/TelnetIO;->access$500()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "readNEVariableName()"

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1017
    const/4 v0, -0x1

    .line 1019
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->this$0:Lorg/jline/builtins/telnet/TelnetIO;

    invoke-static {v1}, Lorg/jline/builtins/telnet/TelnetIO;->access$000(Lorg/jline/builtins/telnet/TelnetIO;)I

    move-result v0

    .line 1020
    const/4 v1, -0x1

    const/4 v2, -0x2

    if-ne v0, v1, :cond_0

    .line 1021
    return v2

    .line 1022
    :cond_0
    const/16 v3, 0xff

    if-ne v0, v3, :cond_3

    .line 1023
    iget-object v1, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->this$0:Lorg/jline/builtins/telnet/TelnetIO;

    invoke-static {v1}, Lorg/jline/builtins/telnet/TelnetIO;->access$000(Lorg/jline/builtins/telnet/TelnetIO;)I

    move-result v0

    .line 1024
    if-ne v0, v3, :cond_1

    .line 1026
    int-to-char v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 1027
    :cond_1
    const/16 v1, 0xf0

    if-ne v0, v1, :cond_2

    .line 1028
    const/4 v1, -0x3

    return v1

    .line 1031
    :cond_2
    return v2

    .line 1033
    :cond_3
    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ne v0, v4, :cond_6

    .line 1034
    iget-object v1, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->this$0:Lorg/jline/builtins/telnet/TelnetIO;

    invoke-static {v1}, Lorg/jline/builtins/telnet/TelnetIO;->access$000(Lorg/jline/builtins/telnet/TelnetIO;)I

    move-result v0

    .line 1035
    if-eq v0, v4, :cond_5

    if-eqz v0, :cond_5

    if-eq v0, v3, :cond_5

    if-ne v0, v5, :cond_4

    goto :goto_1

    .line 1038
    :cond_4
    return v2

    .line 1036
    :cond_5
    :goto_1
    int-to-char v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 1040
    :cond_6
    if-eqz v0, :cond_a

    if-ne v0, v3, :cond_7

    goto :goto_2

    .line 1042
    :cond_7
    if-ne v0, v5, :cond_8

    .line 1043
    return v5

    .line 1046
    :cond_8
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    const/16 v3, 0x32

    if-lt v1, v3, :cond_9

    .line 1048
    return v2

    .line 1050
    :cond_9
    int-to-char v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1053
    goto :goto_0

    .line 1041
    :cond_a
    :goto_2
    return v1
.end method

.method private readNEVariableValue(Ljava/lang/StringBuffer;)I
    .locals 11
    .param p1, "sbuf"    # Ljava/lang/StringBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1067
    invoke-static {}, Lorg/jline/builtins/telnet/TelnetIO;->access$500()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "readNEVariableValue()"

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1069
    iget-object v0, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->this$0:Lorg/jline/builtins/telnet/TelnetIO;

    invoke-static {v0}, Lorg/jline/builtins/telnet/TelnetIO;->access$000(Lorg/jline/builtins/telnet/TelnetIO;)I

    move-result v0

    .line 1070
    .local v0, "i":I
    const/4 v1, -0x1

    const/4 v2, -0x2

    if-ne v0, v1, :cond_0

    .line 1071
    return v2

    .line 1072
    :cond_0
    const/4 v3, -0x3

    const/16 v4, 0xf0

    const/4 v5, 0x0

    const/16 v6, 0xff

    if-ne v0, v6, :cond_3

    .line 1073
    iget-object v1, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->this$0:Lorg/jline/builtins/telnet/TelnetIO;

    invoke-static {v1}, Lorg/jline/builtins/telnet/TelnetIO;->access$000(Lorg/jline/builtins/telnet/TelnetIO;)I

    move-result v0

    .line 1074
    if-ne v0, v6, :cond_1

    .line 1076
    return v5

    .line 1077
    :cond_1
    if-ne v0, v4, :cond_2

    .line 1078
    return v3

    .line 1081
    :cond_2
    return v2

    .line 1083
    :cond_3
    if-eqz v0, :cond_12

    const/4 v7, 0x3

    if-ne v0, v7, :cond_4

    goto/16 :goto_4

    .line 1085
    :cond_4
    const/4 v5, 0x1

    const/4 v8, 0x2

    if-ne v0, v8, :cond_7

    .line 1087
    iget-object v9, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->this$0:Lorg/jline/builtins/telnet/TelnetIO;

    invoke-static {v9}, Lorg/jline/builtins/telnet/TelnetIO;->access$000(Lorg/jline/builtins/telnet/TelnetIO;)I

    move-result v0

    .line 1088
    if-eq v0, v8, :cond_6

    if-eqz v0, :cond_6

    if-eq v0, v7, :cond_6

    if-ne v0, v5, :cond_5

    goto :goto_0

    .line 1091
    :cond_5
    return v2

    .line 1089
    :cond_6
    :goto_0
    int-to-char v9, v0

    invoke-virtual {p1, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 1095
    :cond_7
    int-to-char v9, v0

    invoke-virtual {p1, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1099
    :goto_1
    iget-object v9, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->this$0:Lorg/jline/builtins/telnet/TelnetIO;

    invoke-static {v9}, Lorg/jline/builtins/telnet/TelnetIO;->access$000(Lorg/jline/builtins/telnet/TelnetIO;)I

    move-result v0

    .line 1100
    if-ne v0, v1, :cond_8

    .line 1101
    return v2

    .line 1102
    :cond_8
    if-ne v0, v6, :cond_b

    .line 1103
    iget-object v9, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->this$0:Lorg/jline/builtins/telnet/TelnetIO;

    invoke-static {v9}, Lorg/jline/builtins/telnet/TelnetIO;->access$000(Lorg/jline/builtins/telnet/TelnetIO;)I

    move-result v0

    .line 1104
    if-ne v0, v6, :cond_9

    .line 1106
    int-to-char v9, v0

    invoke-virtual {p1, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 1107
    :cond_9
    if-ne v0, v4, :cond_a

    .line 1108
    return v3

    .line 1111
    :cond_a
    return v2

    .line 1113
    :cond_b
    if-ne v0, v8, :cond_e

    .line 1114
    iget-object v9, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->this$0:Lorg/jline/builtins/telnet/TelnetIO;

    invoke-static {v9}, Lorg/jline/builtins/telnet/TelnetIO;->access$000(Lorg/jline/builtins/telnet/TelnetIO;)I

    move-result v0

    .line 1115
    if-eq v0, v8, :cond_d

    if-eqz v0, :cond_d

    if-eq v0, v7, :cond_d

    if-ne v0, v5, :cond_c

    goto :goto_2

    .line 1118
    :cond_c
    return v2

    .line 1116
    :cond_d
    :goto_2
    int-to-char v9, v0

    invoke-virtual {p1, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 1120
    :cond_e
    if-eqz v0, :cond_11

    if-ne v0, v7, :cond_f

    goto :goto_3

    .line 1124
    :cond_f
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v9

    const/16 v10, 0x3e8

    if-le v9, v10, :cond_10

    .line 1126
    return v2

    .line 1128
    :cond_10
    int-to-char v9, v0

    invoke-virtual {p1, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1131
    goto :goto_1

    .line 1121
    :cond_11
    :goto_3
    return v8

    .line 1084
    :cond_12
    :goto_4
    return v5
.end method

.method private readTriple([I)Z
    .locals 4
    .param p1, "triple"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1272
    iget-object v0, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->this$0:Lorg/jline/builtins/telnet/TelnetIO;

    invoke-static {v0}, Lorg/jline/builtins/telnet/TelnetIO;->access$000(Lorg/jline/builtins/telnet/TelnetIO;)I

    move-result v0

    const/4 v1, 0x0

    aput v0, p1, v1

    .line 1273
    iget-object v0, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->this$0:Lorg/jline/builtins/telnet/TelnetIO;

    invoke-static {v0}, Lorg/jline/builtins/telnet/TelnetIO;->access$000(Lorg/jline/builtins/telnet/TelnetIO;)I

    move-result v0

    const/4 v2, 0x1

    aput v0, p1, v2

    .line 1274
    aget v0, p1, v1

    const/16 v3, 0xff

    if-ne v0, v3, :cond_0

    aget v0, p1, v2

    const/16 v3, 0xf0

    if-ne v0, v3, :cond_0

    .line 1275
    return v1

    .line 1277
    :cond_0
    const/4 v0, 0x2

    iget-object v1, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->this$0:Lorg/jline/builtins/telnet/TelnetIO;

    invoke-static {v1}, Lorg/jline/builtins/telnet/TelnetIO;->access$000(Lorg/jline/builtins/telnet/TelnetIO;)I

    move-result v1

    aput v1, p1, v0

    .line 1278
    return v2
.end method

.method private sendCommand(IIZ)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "j"    # I
    .param p3, "westarted"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1351
    iget-object v0, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->this$0:Lorg/jline/builtins/telnet/TelnetIO;

    const/16 v1, 0xff

    invoke-static {v0, v1}, Lorg/jline/builtins/telnet/TelnetIO;->access$700(Lorg/jline/builtins/telnet/TelnetIO;I)V

    .line 1352
    iget-object v0, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->this$0:Lorg/jline/builtins/telnet/TelnetIO;

    invoke-static {v0, p1}, Lorg/jline/builtins/telnet/TelnetIO;->access$700(Lorg/jline/builtins/telnet/TelnetIO;I)V

    .line 1353
    iget-object v0, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->this$0:Lorg/jline/builtins/telnet/TelnetIO;

    invoke-static {v0, p2}, Lorg/jline/builtins/telnet/TelnetIO;->access$700(Lorg/jline/builtins/telnet/TelnetIO;I)V

    .line 1355
    const/4 v0, 0x1

    const/16 v1, 0xfd

    if-ne p1, v1, :cond_0

    if-eqz p3, :cond_0

    invoke-direct {p0, v1, p2, v0}, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->setWait(IIZ)V

    .line 1357
    :cond_0
    const/16 v1, 0xfb

    if-ne p1, v1, :cond_1

    if-eqz p3, :cond_1

    invoke-direct {p0, v1, p2, v0}, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->setWait(IIZ)V

    .line 1358
    :cond_1
    iget-object v0, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->this$0:Lorg/jline/builtins/telnet/TelnetIO;

    invoke-virtual {v0}, Lorg/jline/builtins/telnet/TelnetIO;->flush()V

    .line 1359
    return-void
.end method

.method private setWait(IIZ)V
    .locals 0
    .param p1, "WHAT"    # I
    .param p2, "OPTION"    # I
    .param p3, "WAIT"    # Z

    .line 1503
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 1505
    :pswitch_1
    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    .line 1522
    :sswitch_0
    iput-boolean p3, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->WAIT_DO_REPLY_NEWENV:Z

    goto :goto_0

    .line 1519
    :sswitch_1
    iput-boolean p3, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->WAIT_DO_REPLY_LINEMODE:Z

    .line 1520
    goto :goto_0

    .line 1513
    :sswitch_2
    iput-boolean p3, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->WAIT_DO_REPLY_NAWS:Z

    .line 1514
    goto :goto_0

    .line 1516
    :sswitch_3
    iput-boolean p3, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->WAIT_DO_REPLY_TTYPE:Z

    .line 1517
    goto :goto_0

    .line 1507
    :sswitch_4
    iput-boolean p3, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->WAIT_DO_REPLY_SUPGA:Z

    .line 1508
    goto :goto_0

    .line 1510
    :sswitch_5
    iput-boolean p3, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->WAIT_DO_REPLY_ECHO:Z

    .line 1511
    nop

    .line 1525
    :goto_0
    goto :goto_1

    .line 1527
    :pswitch_2
    sparse-switch p2, :sswitch_data_1

    goto :goto_1

    .line 1535
    :sswitch_6
    iput-boolean p3, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->WAIT_WILL_REPLY_NAWS:Z

    .line 1536
    goto :goto_1

    .line 1538
    :sswitch_7
    iput-boolean p3, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->WAIT_WILL_REPLY_TTYPE:Z

    goto :goto_1

    .line 1529
    :sswitch_8
    iput-boolean p3, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->WAIT_WILL_REPLY_SUPGA:Z

    .line 1530
    goto :goto_1

    .line 1532
    :sswitch_9
    iput-boolean p3, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->WAIT_WILL_REPLY_ECHO:Z

    .line 1533
    nop

    .line 1543
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0xfb
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_5
        0x3 -> :sswitch_4
        0x18 -> :sswitch_3
        0x1f -> :sswitch_2
        0x22 -> :sswitch_1
        0x27 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_9
        0x3 -> :sswitch_8
        0x18 -> :sswitch_7
        0x1f -> :sswitch_6
    .end sparse-switch
.end method

.method private skipToSE()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1268
    :goto_0
    iget-object v0, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->this$0:Lorg/jline/builtins/telnet/TelnetIO;

    invoke-static {v0}, Lorg/jline/builtins/telnet/TelnetIO;->access$000(Lorg/jline/builtins/telnet/TelnetIO;)I

    move-result v0

    const/16 v1, 0xf0

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 1269
    :cond_0
    return-void
.end method

.method private supported(I)Z
    .locals 1
    .param p1, "i"    # I

    .line 1330
    sparse-switch p1, :sswitch_data_0

    .line 1340
    const/4 v0, 0x0

    return v0

    .line 1338
    :sswitch_0
    iget-object v0, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->this$0:Lorg/jline/builtins/telnet/TelnetIO;

    invoke-static {v0}, Lorg/jline/builtins/telnet/TelnetIO;->access$600(Lorg/jline/builtins/telnet/TelnetIO;)Lorg/jline/builtins/telnet/ConnectionData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jline/builtins/telnet/ConnectionData;->isLineMode()Z

    move-result v0

    return v0

    .line 1336
    :sswitch_1
    const/4 v0, 0x1

    return v0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x3 -> :sswitch_1
        0x18 -> :sswitch_1
        0x1f -> :sswitch_1
        0x22 -> :sswitch_0
        0x27 -> :sswitch_1
    .end sparse-switch
.end method

.method private waitDOreply(I)Z
    .locals 1
    .param p1, "i"    # I

    .line 1474
    sparse-switch p1, :sswitch_data_0

    .line 1488
    const/4 v0, 0x0

    return v0

    .line 1486
    :sswitch_0
    iget-boolean v0, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->WAIT_DO_REPLY_NEWENV:Z

    return v0

    .line 1484
    :sswitch_1
    iget-boolean v0, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->WAIT_DO_REPLY_LINEMODE:Z

    return v0

    .line 1480
    :sswitch_2
    iget-boolean v0, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->WAIT_DO_REPLY_NAWS:Z

    return v0

    .line 1482
    :sswitch_3
    iget-boolean v0, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->WAIT_DO_REPLY_TTYPE:Z

    return v0

    .line 1476
    :sswitch_4
    iget-boolean v0, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->WAIT_DO_REPLY_SUPGA:Z

    return v0

    .line 1478
    :sswitch_5
    iget-boolean v0, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->WAIT_DO_REPLY_ECHO:Z

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_5
        0x3 -> :sswitch_4
        0x18 -> :sswitch_3
        0x1f -> :sswitch_2
        0x22 -> :sswitch_1
        0x27 -> :sswitch_0
    .end sparse-switch
.end method

.method private waitWILLreply(I)Z
    .locals 1
    .param p1, "i"    # I

    .line 1452
    sparse-switch p1, :sswitch_data_0

    .line 1462
    const/4 v0, 0x0

    return v0

    .line 1458
    :sswitch_0
    iget-boolean v0, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->WAIT_WILL_REPLY_NAWS:Z

    return v0

    .line 1460
    :sswitch_1
    iget-boolean v0, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->WAIT_WILL_REPLY_TTYPE:Z

    return v0

    .line 1454
    :sswitch_2
    iget-boolean v0, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->WAIT_WILL_REPLY_SUPGA:Z

    return v0

    .line 1456
    :sswitch_3
    iget-boolean v0, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->WAIT_WILL_REPLY_ECHO:Z

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x3 -> :sswitch_2
        0x18 -> :sswitch_1
        0x1f -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public doCharacterModeInit()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 713
    const/16 v0, 0xfb

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v1}, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->sendCommand(IIZ)V

    .line 714
    const/16 v2, 0xfe

    invoke-direct {p0, v2, v1, v1}, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->sendCommand(IIZ)V

    .line 715
    const/16 v2, 0xfd

    const/16 v3, 0x1f

    invoke-direct {p0, v2, v3, v1}, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->sendCommand(IIZ)V

    .line 716
    const/4 v3, 0x3

    invoke-direct {p0, v0, v3, v1}, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->sendCommand(IIZ)V

    .line 717
    invoke-direct {p0, v2, v3, v1}, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->sendCommand(IIZ)V

    .line 718
    const/16 v0, 0x18

    invoke-direct {p0, v2, v0, v1}, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->sendCommand(IIZ)V

    .line 719
    const/16 v0, 0x27

    invoke-direct {p0, v2, v0, v1}, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->sendCommand(IIZ)V

    .line 720
    return-void
.end method

.method public doLineModeInit()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 723
    const/16 v0, 0xfd

    const/16 v1, 0x1f

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->sendCommand(IIZ)V

    .line 724
    const/16 v1, 0xfb

    const/4 v3, 0x3

    invoke-direct {p0, v1, v3, v2}, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->sendCommand(IIZ)V

    .line 725
    invoke-direct {p0, v0, v3, v2}, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->sendCommand(IIZ)V

    .line 726
    const/16 v1, 0x18

    invoke-direct {p0, v0, v1, v2}, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->sendCommand(IIZ)V

    .line 727
    const/16 v1, 0x22

    invoke-direct {p0, v0, v1, v2}, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->sendCommand(IIZ)V

    .line 728
    const/16 v1, 0x27

    invoke-direct {p0, v0, v1, v2}, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->sendCommand(IIZ)V

    .line 729
    return-void
.end method

.method public getTTYPE()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1204
    const/16 v0, 0x18

    invoke-direct {p0, v0}, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1205
    iget-object v1, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->this$0:Lorg/jline/builtins/telnet/TelnetIO;

    const/16 v2, 0xff

    invoke-static {v1, v2}, Lorg/jline/builtins/telnet/TelnetIO;->access$700(Lorg/jline/builtins/telnet/TelnetIO;I)V

    .line 1206
    iget-object v1, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->this$0:Lorg/jline/builtins/telnet/TelnetIO;

    const/16 v3, 0xfa

    invoke-static {v1, v3}, Lorg/jline/builtins/telnet/TelnetIO;->access$700(Lorg/jline/builtins/telnet/TelnetIO;I)V

    .line 1207
    iget-object v1, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->this$0:Lorg/jline/builtins/telnet/TelnetIO;

    invoke-static {v1, v0}, Lorg/jline/builtins/telnet/TelnetIO;->access$700(Lorg/jline/builtins/telnet/TelnetIO;I)V

    .line 1208
    iget-object v0, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->this$0:Lorg/jline/builtins/telnet/TelnetIO;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/jline/builtins/telnet/TelnetIO;->access$700(Lorg/jline/builtins/telnet/TelnetIO;I)V

    .line 1209
    iget-object v0, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->this$0:Lorg/jline/builtins/telnet/TelnetIO;

    invoke-static {v0, v2}, Lorg/jline/builtins/telnet/TelnetIO;->access$700(Lorg/jline/builtins/telnet/TelnetIO;I)V

    .line 1210
    iget-object v0, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->this$0:Lorg/jline/builtins/telnet/TelnetIO;

    const/16 v1, 0xf0

    invoke-static {v0, v1}, Lorg/jline/builtins/telnet/TelnetIO;->access$700(Lorg/jline/builtins/telnet/TelnetIO;I)V

    .line 1211
    iget-object v0, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->this$0:Lorg/jline/builtins/telnet/TelnetIO;

    invoke-virtual {v0}, Lorg/jline/builtins/telnet/TelnetIO;->flush()V

    .line 1213
    :cond_0
    return-void
.end method

.method public handleC(I)V
    .locals 4
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 738
    iget-object v0, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->buffer:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 739
    invoke-direct {p0, v0}, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->parseTWO([I)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 740
    iget-object v0, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->buffer:[I

    iget-object v3, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->this$0:Lorg/jline/builtins/telnet/TelnetIO;

    invoke-static {v3}, Lorg/jline/builtins/telnet/TelnetIO;->access$000(Lorg/jline/builtins/telnet/TelnetIO;)I

    move-result v3

    aput v3, v0, v2

    .line 741
    iget-object v0, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->buffer:[I

    invoke-direct {p0, v0}, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->parse([I)V

    .line 743
    :cond_0
    iget-object v0, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->buffer:[I

    aput v1, v0, v1

    .line 744
    aput v1, v0, v2

    .line 745
    return-void
.end method

.method public handleLINEMODE()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 905
    iget-object v0, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->this$0:Lorg/jline/builtins/telnet/TelnetIO;

    invoke-static {v0}, Lorg/jline/builtins/telnet/TelnetIO;->access$000(Lorg/jline/builtins/telnet/TelnetIO;)I

    move-result v0

    .line 906
    .local v0, "c":I
    sparse-switch v0, :sswitch_data_0

    .line 919
    invoke-direct {p0}, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->skipToSE()V

    goto :goto_0

    .line 915
    :sswitch_0
    invoke-virtual {p0, v0}, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->handleLMForwardMask(I)V

    .line 916
    goto :goto_0

    .line 911
    :sswitch_1
    invoke-virtual {p0}, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->handleLMSLC()V

    .line 912
    goto :goto_0

    .line 908
    :sswitch_2
    invoke-virtual {p0}, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->handleLMMode()V

    .line 909
    nop

    .line 921
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x3 -> :sswitch_1
        0xfb -> :sswitch_0
        0xfc -> :sswitch_0
    .end sparse-switch
.end method

.method public handleLMForwardMask(I)V
    .locals 1
    .param p1, "WHAT"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 981
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 983
    :pswitch_0
    iget-boolean v0, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->WAIT_LM_DO_REPLY_FORWARDMASK:Z

    if-eqz v0, :cond_0

    .line 984
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->WAIT_LM_DO_REPLY_FORWARDMASK:Z

    .line 988
    :cond_0
    :goto_0
    invoke-direct {p0}, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->skipToSE()V

    .line 989
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xfc
        :pswitch_0
    .end packed-switch
.end method

.method public handleLMMode()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 926
    iget-boolean v0, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->WAIT_LM_MODE_ACK:Z

    if-eqz v0, :cond_1

    .line 927
    iget-object v0, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->this$0:Lorg/jline/builtins/telnet/TelnetIO;

    invoke-static {v0}, Lorg/jline/builtins/telnet/TelnetIO;->access$000(Lorg/jline/builtins/telnet/TelnetIO;)I

    move-result v0

    .line 928
    .local v0, "mask":I
    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    .line 929
    invoke-static {}, Lorg/jline/builtins/telnet/TelnetIO;->access$500()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Client violates linemodeack sent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 931
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->WAIT_LM_MODE_ACK:Z

    .line 933
    .end local v0    # "mask":I
    :cond_1
    invoke-direct {p0}, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->skipToSE()V

    .line 934
    return-void
.end method

.method public handleLMSLC()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 937
    const/4 v0, 0x3

    new-array v1, v0, [I

    .line 938
    .local v1, "triple":[I
    invoke-direct {p0, v1}, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->readTriple([I)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 943
    :cond_0
    const/4 v2, 0x0

    aget v3, v1, v2

    const/16 v4, 0xf0

    const/16 v5, 0x22

    const/16 v6, 0xfa

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/16 v9, 0xff

    if-nez v3, :cond_2

    aget v3, v1, v8

    if-ne v3, v0, :cond_2

    aget v3, v1, v7

    if-nez v3, :cond_2

    .line 944
    invoke-direct {p0}, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->skipToSE()V

    .line 946
    iget-object v3, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->this$0:Lorg/jline/builtins/telnet/TelnetIO;

    invoke-static {v3, v9}, Lorg/jline/builtins/telnet/TelnetIO;->access$700(Lorg/jline/builtins/telnet/TelnetIO;I)V

    .line 947
    iget-object v3, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->this$0:Lorg/jline/builtins/telnet/TelnetIO;

    invoke-static {v3, v6}, Lorg/jline/builtins/telnet/TelnetIO;->access$700(Lorg/jline/builtins/telnet/TelnetIO;I)V

    .line 948
    iget-object v3, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->this$0:Lorg/jline/builtins/telnet/TelnetIO;

    invoke-static {v3, v5}, Lorg/jline/builtins/telnet/TelnetIO;->access$700(Lorg/jline/builtins/telnet/TelnetIO;I)V

    .line 949
    iget-object v3, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->this$0:Lorg/jline/builtins/telnet/TelnetIO;

    invoke-static {v3, v0}, Lorg/jline/builtins/telnet/TelnetIO;->access$700(Lorg/jline/builtins/telnet/TelnetIO;I)V

    .line 951
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_0
    const/16 v5, 0xc

    if-ge v3, v5, :cond_1

    .line 952
    iget-object v5, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->this$0:Lorg/jline/builtins/telnet/TelnetIO;

    invoke-static {v5, v3}, Lorg/jline/builtins/telnet/TelnetIO;->access$700(Lorg/jline/builtins/telnet/TelnetIO;I)V

    .line 953
    iget-object v5, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->this$0:Lorg/jline/builtins/telnet/TelnetIO;

    invoke-static {v5, v0}, Lorg/jline/builtins/telnet/TelnetIO;->access$700(Lorg/jline/builtins/telnet/TelnetIO;I)V

    .line 954
    iget-object v5, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->this$0:Lorg/jline/builtins/telnet/TelnetIO;

    invoke-static {v5, v2}, Lorg/jline/builtins/telnet/TelnetIO;->access$700(Lorg/jline/builtins/telnet/TelnetIO;I)V

    .line 951
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 956
    .end local v3    # "i":I
    :cond_1
    iget-object v0, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->this$0:Lorg/jline/builtins/telnet/TelnetIO;

    invoke-static {v0, v9}, Lorg/jline/builtins/telnet/TelnetIO;->access$700(Lorg/jline/builtins/telnet/TelnetIO;I)V

    .line 957
    iget-object v0, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->this$0:Lorg/jline/builtins/telnet/TelnetIO;

    invoke-static {v0, v4}, Lorg/jline/builtins/telnet/TelnetIO;->access$700(Lorg/jline/builtins/telnet/TelnetIO;I)V

    .line 958
    iget-object v0, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->this$0:Lorg/jline/builtins/telnet/TelnetIO;

    invoke-virtual {v0}, Lorg/jline/builtins/telnet/TelnetIO;->flush()V

    goto :goto_2

    .line 962
    :cond_2
    iget-object v3, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->this$0:Lorg/jline/builtins/telnet/TelnetIO;

    invoke-static {v3, v9}, Lorg/jline/builtins/telnet/TelnetIO;->access$700(Lorg/jline/builtins/telnet/TelnetIO;I)V

    .line 963
    iget-object v3, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->this$0:Lorg/jline/builtins/telnet/TelnetIO;

    invoke-static {v3, v6}, Lorg/jline/builtins/telnet/TelnetIO;->access$700(Lorg/jline/builtins/telnet/TelnetIO;I)V

    .line 964
    iget-object v3, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->this$0:Lorg/jline/builtins/telnet/TelnetIO;

    invoke-static {v3, v5}, Lorg/jline/builtins/telnet/TelnetIO;->access$700(Lorg/jline/builtins/telnet/TelnetIO;I)V

    .line 965
    iget-object v3, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->this$0:Lorg/jline/builtins/telnet/TelnetIO;

    invoke-static {v3, v0}, Lorg/jline/builtins/telnet/TelnetIO;->access$700(Lorg/jline/builtins/telnet/TelnetIO;I)V

    .line 966
    iget-object v0, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->this$0:Lorg/jline/builtins/telnet/TelnetIO;

    aget v3, v1, v2

    invoke-static {v0, v3}, Lorg/jline/builtins/telnet/TelnetIO;->access$700(Lorg/jline/builtins/telnet/TelnetIO;I)V

    .line 967
    iget-object v0, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->this$0:Lorg/jline/builtins/telnet/TelnetIO;

    aget v3, v1, v8

    or-int/lit16 v3, v3, 0x80

    invoke-static {v0, v3}, Lorg/jline/builtins/telnet/TelnetIO;->access$700(Lorg/jline/builtins/telnet/TelnetIO;I)V

    .line 968
    iget-object v0, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->this$0:Lorg/jline/builtins/telnet/TelnetIO;

    aget v3, v1, v7

    invoke-static {v0, v3}, Lorg/jline/builtins/telnet/TelnetIO;->access$700(Lorg/jline/builtins/telnet/TelnetIO;I)V

    .line 969
    :goto_1
    invoke-direct {p0, v1}, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->readTriple([I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 970
    iget-object v0, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->this$0:Lorg/jline/builtins/telnet/TelnetIO;

    aget v3, v1, v2

    invoke-static {v0, v3}, Lorg/jline/builtins/telnet/TelnetIO;->access$700(Lorg/jline/builtins/telnet/TelnetIO;I)V

    .line 971
    iget-object v0, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->this$0:Lorg/jline/builtins/telnet/TelnetIO;

    aget v3, v1, v8

    or-int/lit16 v3, v3, 0x80

    invoke-static {v0, v3}, Lorg/jline/builtins/telnet/TelnetIO;->access$700(Lorg/jline/builtins/telnet/TelnetIO;I)V

    .line 972
    iget-object v0, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->this$0:Lorg/jline/builtins/telnet/TelnetIO;

    aget v3, v1, v7

    invoke-static {v0, v3}, Lorg/jline/builtins/telnet/TelnetIO;->access$700(Lorg/jline/builtins/telnet/TelnetIO;I)V

    goto :goto_1

    .line 974
    :cond_3
    iget-object v0, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->this$0:Lorg/jline/builtins/telnet/TelnetIO;

    invoke-static {v0, v9}, Lorg/jline/builtins/telnet/TelnetIO;->access$700(Lorg/jline/builtins/telnet/TelnetIO;I)V

    .line 975
    iget-object v0, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->this$0:Lorg/jline/builtins/telnet/TelnetIO;

    invoke-static {v0, v4}, Lorg/jline/builtins/telnet/TelnetIO;->access$700(Lorg/jline/builtins/telnet/TelnetIO;I)V

    .line 976
    iget-object v0, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->this$0:Lorg/jline/builtins/telnet/TelnetIO;

    invoke-virtual {v0}, Lorg/jline/builtins/telnet/TelnetIO;->flush()V

    .line 978
    :goto_2
    return-void
.end method

.method public handleNEInfo()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1193
    invoke-static {}, Lorg/jline/builtins/telnet/TelnetIO;->access$500()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "handleNEInfo()"

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1194
    const/16 v0, 0x27

    invoke-direct {p0, v0}, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1195
    invoke-virtual {p0}, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->readNEVariables()V

    .line 1197
    :cond_0
    return-void
.end method

.method public handleNEIs()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1186
    invoke-static {}, Lorg/jline/builtins/telnet/TelnetIO;->access$500()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "handleNEIs()"

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1187
    const/16 v0, 0x27

    invoke-direct {p0, v0}, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1188
    invoke-virtual {p0}, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->readNEVariables()V

    .line 1190
    :cond_0
    return-void
.end method

.method public handleNEWENV()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 992
    invoke-static {}, Lorg/jline/builtins/telnet/TelnetIO;->access$500()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "handleNEWENV()"

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 993
    iget-object v0, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->this$0:Lorg/jline/builtins/telnet/TelnetIO;

    invoke-static {v0}, Lorg/jline/builtins/telnet/TelnetIO;->access$000(Lorg/jline/builtins/telnet/TelnetIO;)I

    move-result v0

    .line 994
    .local v0, "c":I
    packed-switch v0, :pswitch_data_0

    .line 1003
    :pswitch_0
    invoke-direct {p0}, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->skipToSE()V

    goto :goto_0

    .line 999
    :pswitch_1
    invoke-virtual {p0}, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->handleNEInfo()V

    .line 1000
    goto :goto_0

    .line 996
    :pswitch_2
    invoke-virtual {p0}, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->handleNEIs()V

    .line 997
    nop

    .line 1005
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public negotiateLineMode()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1220
    const/16 v0, 0x22

    invoke-direct {p0, v0}, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1221
    iget-object v1, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->this$0:Lorg/jline/builtins/telnet/TelnetIO;

    const/16 v2, 0xff

    invoke-static {v1, v2}, Lorg/jline/builtins/telnet/TelnetIO;->access$700(Lorg/jline/builtins/telnet/TelnetIO;I)V

    .line 1222
    iget-object v1, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->this$0:Lorg/jline/builtins/telnet/TelnetIO;

    const/16 v3, 0xfa

    invoke-static {v1, v3}, Lorg/jline/builtins/telnet/TelnetIO;->access$700(Lorg/jline/builtins/telnet/TelnetIO;I)V

    .line 1223
    iget-object v1, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->this$0:Lorg/jline/builtins/telnet/TelnetIO;

    invoke-static {v1, v0}, Lorg/jline/builtins/telnet/TelnetIO;->access$700(Lorg/jline/builtins/telnet/TelnetIO;I)V

    .line 1224
    iget-object v1, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->this$0:Lorg/jline/builtins/telnet/TelnetIO;

    const/4 v4, 0x1

    invoke-static {v1, v4}, Lorg/jline/builtins/telnet/TelnetIO;->access$700(Lorg/jline/builtins/telnet/TelnetIO;I)V

    .line 1225
    iget-object v1, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->this$0:Lorg/jline/builtins/telnet/TelnetIO;

    const/4 v5, 0x3

    invoke-static {v1, v5}, Lorg/jline/builtins/telnet/TelnetIO;->access$700(Lorg/jline/builtins/telnet/TelnetIO;I)V

    .line 1226
    iget-object v1, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->this$0:Lorg/jline/builtins/telnet/TelnetIO;

    invoke-static {v1, v2}, Lorg/jline/builtins/telnet/TelnetIO;->access$700(Lorg/jline/builtins/telnet/TelnetIO;I)V

    .line 1227
    iget-object v1, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->this$0:Lorg/jline/builtins/telnet/TelnetIO;

    const/16 v5, 0xf0

    invoke-static {v1, v5}, Lorg/jline/builtins/telnet/TelnetIO;->access$700(Lorg/jline/builtins/telnet/TelnetIO;I)V

    .line 1228
    iput-boolean v4, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->WAIT_LM_MODE_ACK:Z

    .line 1231
    iget-object v1, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->this$0:Lorg/jline/builtins/telnet/TelnetIO;

    invoke-static {v1, v2}, Lorg/jline/builtins/telnet/TelnetIO;->access$700(Lorg/jline/builtins/telnet/TelnetIO;I)V

    .line 1232
    iget-object v1, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->this$0:Lorg/jline/builtins/telnet/TelnetIO;

    invoke-static {v1, v3}, Lorg/jline/builtins/telnet/TelnetIO;->access$700(Lorg/jline/builtins/telnet/TelnetIO;I)V

    .line 1233
    iget-object v1, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->this$0:Lorg/jline/builtins/telnet/TelnetIO;

    invoke-static {v1, v0}, Lorg/jline/builtins/telnet/TelnetIO;->access$700(Lorg/jline/builtins/telnet/TelnetIO;I)V

    .line 1234
    iget-object v0, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->this$0:Lorg/jline/builtins/telnet/TelnetIO;

    const/16 v1, 0xfe

    invoke-static {v0, v1}, Lorg/jline/builtins/telnet/TelnetIO;->access$700(Lorg/jline/builtins/telnet/TelnetIO;I)V

    .line 1235
    iget-object v0, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->this$0:Lorg/jline/builtins/telnet/TelnetIO;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lorg/jline/builtins/telnet/TelnetIO;->access$700(Lorg/jline/builtins/telnet/TelnetIO;I)V

    .line 1236
    iget-object v0, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->this$0:Lorg/jline/builtins/telnet/TelnetIO;

    invoke-static {v0, v2}, Lorg/jline/builtins/telnet/TelnetIO;->access$700(Lorg/jline/builtins/telnet/TelnetIO;I)V

    .line 1237
    iget-object v0, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->this$0:Lorg/jline/builtins/telnet/TelnetIO;

    invoke-static {v0, v5}, Lorg/jline/builtins/telnet/TelnetIO;->access$700(Lorg/jline/builtins/telnet/TelnetIO;I)V

    .line 1238
    iput-boolean v4, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->WAIT_LM_DO_REPLY_FORWARDMASK:Z

    .line 1239
    iget-object v0, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->this$0:Lorg/jline/builtins/telnet/TelnetIO;

    invoke-virtual {v0}, Lorg/jline/builtins/telnet/TelnetIO;->flush()V

    .line 1241
    :cond_0
    return-void
.end method

.method public readNEVariables()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1136
    invoke-static {}, Lorg/jline/builtins/telnet/TelnetIO;->access$500()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "readNEVariables()"

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1137
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1138
    .local v0, "sbuf":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->this$0:Lorg/jline/builtins/telnet/TelnetIO;

    invoke-static {v1}, Lorg/jline/builtins/telnet/TelnetIO;->access$000(Lorg/jline/builtins/telnet/TelnetIO;)I

    move-result v1

    .line 1139
    .local v1, "i":I
    const/16 v2, 0xff

    if-ne v1, v2, :cond_0

    .line 1141
    invoke-direct {p0}, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->skipToSE()V

    .line 1142
    invoke-static {}, Lorg/jline/builtins/telnet/TelnetIO;->access$500()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v4, "readNEVariables()::INVALID VARIABLE"

    invoke-virtual {v2, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1143
    return-void

    .line 1145
    :cond_0
    const/4 v2, 0x1

    .line 1146
    .local v2, "cont":Z
    if-eqz v1, :cond_1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_2

    .line 1148
    :cond_1
    invoke-direct {p0, v0}, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->readNEVariableName(Ljava/lang/StringBuffer;)I

    move-result v3

    const-string v4, "readNEVariables()::NE_IN_ERROR"

    const-string v5, "readNEVariables()::NE_IN_END"

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_1

    .line 1156
    :pswitch_1
    invoke-static {}, Lorg/jline/builtins/telnet/TelnetIO;->access$500()Ljava/util/logging/Logger;

    move-result-object v3

    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v7, "readNEVariables()::NE_VAR_DEFINED"

    invoke-virtual {v3, v6, v7}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1157
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1158
    .local v3, "str":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v0, v7, v6}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 1159
    invoke-direct {p0, v0}, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->readNEVariableValue(Ljava/lang/StringBuffer;)I

    move-result v6

    packed-switch v6, :pswitch_data_1

    :pswitch_2
    goto :goto_0

    .line 1171
    :pswitch_3
    invoke-static {}, Lorg/jline/builtins/telnet/TelnetIO;->access$500()Ljava/util/logging/Logger;

    move-result-object v4

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "readNEVariables()::NE_VAR_OK:VAR="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " VAL="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1172
    iget-object v4, p0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->this$0:Lorg/jline/builtins/telnet/TelnetIO;

    invoke-static {v4}, Lorg/jline/builtins/telnet/TelnetIO;->access$600(Lorg/jline/builtins/telnet/TelnetIO;)Lorg/jline/builtins/telnet/ConnectionData;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jline/builtins/telnet/ConnectionData;->getEnvironment()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1173
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    invoke-virtual {v0, v7, v4}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 1167
    :pswitch_4
    invoke-static {}, Lorg/jline/builtins/telnet/TelnetIO;->access$500()Ljava/util/logging/Logger;

    move-result-object v4

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v6, "readNEVariables()::NE_VAR_DEFINED_EMPTY"

    invoke-virtual {v4, v5, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1168
    goto :goto_0

    .line 1161
    :pswitch_5
    invoke-static {}, Lorg/jline/builtins/telnet/TelnetIO;->access$500()Ljava/util/logging/Logger;

    move-result-object v5

    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v5, v6, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1162
    return-void

    .line 1164
    :pswitch_6
    invoke-static {}, Lorg/jline/builtins/telnet/TelnetIO;->access$500()Ljava/util/logging/Logger;

    move-result-object v4

    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v4, v6, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1165
    return-void

    .line 1176
    :goto_0
    goto :goto_1

    .line 1178
    .end local v3    # "str":Ljava/lang/String;
    :pswitch_7
    invoke-static {}, Lorg/jline/builtins/telnet/TelnetIO;->access$500()Ljava/util/logging/Logger;

    move-result-object v3

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v5, "readNEVariables()::NE_VAR_UNDEFINED"

    invoke-virtual {v3, v4, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_1

    .line 1150
    :pswitch_8
    invoke-static {}, Lorg/jline/builtins/telnet/TelnetIO;->access$500()Ljava/util/logging/Logger;

    move-result-object v3

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v3, v5, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1151
    return-void

    .line 1153
    :pswitch_9
    invoke-static {}, Lorg/jline/builtins/telnet/TelnetIO;->access$500()Ljava/util/logging/Logger;

    move-result-object v3

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v3, v4, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1154
    return-void

    .line 1181
    :goto_1
    if-nez v2, :cond_1

    .line 1183
    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x3
        :pswitch_6
        :pswitch_5
        :pswitch_2
        :pswitch_4
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
