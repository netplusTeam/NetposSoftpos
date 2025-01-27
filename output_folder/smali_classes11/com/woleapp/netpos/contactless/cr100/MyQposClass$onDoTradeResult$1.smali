.class final Lcom/woleapp/netpos/contactless/cr100/MyQposClass$onDoTradeResult$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MyQposClass.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/woleapp/netpos/contactless/cr100/MyQposClass;->onDoTradeResult(Lcom/dspread/xpos/QPOSService$DoTradeResult;Ljava/util/Hashtable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"
    }
    d2 = {
        "Lkotlinx/coroutines/CoroutineScope;",
        "",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.woleapp.netpos.contactless.cr100.MyQposClass$onDoTradeResult$1"
    f = "MyQposClass.kt"
    i = {}
    l = {
        0x45
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/woleapp/netpos/contactless/cr100/MyQposClass;


# direct methods
.method constructor <init>(Lcom/woleapp/netpos/contactless/cr100/MyQposClass;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/woleapp/netpos/contactless/cr100/MyQposClass;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/woleapp/netpos/contactless/cr100/MyQposClass$onDoTradeResult$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/woleapp/netpos/contactless/cr100/MyQposClass$onDoTradeResult$1;->this$0:Lcom/woleapp/netpos/contactless/cr100/MyQposClass;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/woleapp/netpos/contactless/cr100/MyQposClass$onDoTradeResult$1;

    iget-object v1, p0, Lcom/woleapp/netpos/contactless/cr100/MyQposClass$onDoTradeResult$1;->this$0:Lcom/woleapp/netpos/contactless/cr100/MyQposClass;

    invoke-direct {v0, v1, p2}, Lcom/woleapp/netpos/contactless/cr100/MyQposClass$onDoTradeResult$1;-><init>(Lcom/woleapp/netpos/contactless/cr100/MyQposClass;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/woleapp/netpos/contactless/cr100/MyQposClass$onDoTradeResult$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/woleapp/netpos/contactless/cr100/MyQposClass$onDoTradeResult$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/cr100/MyQposClass$onDoTradeResult$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/woleapp/netpos/contactless/cr100/MyQposClass$onDoTradeResult$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 68
    move-object/from16 v1, p0

    iget v2, v1, Lcom/woleapp/netpos/contactless/cr100/MyQposClass$onDoTradeResult$1;->label:I

    packed-switch v2, :pswitch_data_0

    .line 89
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :pswitch_0
    move-object/from16 v0, p0

    .local v0, "this":Lcom/woleapp/netpos/contactless/cr100/MyQposClass$onDoTradeResult$1;
    move-object/from16 v2, p1

    .local v2, "$result":Ljava/lang/Object;
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    .end local v0    # "this":Lcom/woleapp/netpos/contactless/cr100/MyQposClass$onDoTradeResult$1;
    .end local v2    # "$result":Ljava/lang/Object;
    :pswitch_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v2, p0

    .local v2, "this":Lcom/woleapp/netpos/contactless/cr100/MyQposClass$onDoTradeResult$1;
    move-object/from16 v3, p1

    .line 69
    .local v3, "$result":Ljava/lang/Object;
    const-wide/16 v4, 0xc8

    move-object v6, v2

    check-cast v6, Lkotlin/coroutines/Continuation;

    const/4 v7, 0x1

    iput v7, v2, Lcom/woleapp/netpos/contactless/cr100/MyQposClass$onDoTradeResult$1;->label:I

    invoke-static {v4, v5, v6}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v0, :cond_0

    .line 68
    return-object v0

    .line 69
    :cond_0
    move-object v0, v2

    move-object v2, v3

    .line 70
    .end local v3    # "$result":Ljava/lang/Object;
    .restart local v0    # "this":Lcom/woleapp/netpos/contactless/cr100/MyQposClass$onDoTradeResult$1;
    .local v2, "$result":Ljava/lang/Object;
    :goto_0
    sget-object v3, Lcom/woleapp/netpos/contactless/app/NetPosApp;->Companion:Lcom/woleapp/netpos/contactless/app/NetPosApp$Companion;

    invoke-virtual {v3}, Lcom/woleapp/netpos/contactless/app/NetPosApp$Companion;->getCr100Pos()Lcom/dspread/xpos/QPOSService;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/dspread/xpos/QPOSService;->getNFCBatchData()Ljava/util/Hashtable;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 71
    sget-object v3, Lcom/woleapp/netpos/contactless/app/NetPosApp;->Companion:Lcom/woleapp/netpos/contactless/app/NetPosApp$Companion;

    invoke-virtual {v3}, Lcom/woleapp/netpos/contactless/app/NetPosApp$Companion;->getCr100Pos()Lcom/dspread/xpos/QPOSService;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/dspread/xpos/QPOSService;->getNFCBatchData()Ljava/util/Hashtable;

    move-result-object v3

    const-string v4, "tlv"

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 73
    .local v3, "tlv":Ljava/lang/String;
    sget-object v4, Lcom/woleapp/netpos/contactless/cr100/utils/TLVParser;->INSTANCE:Lcom/woleapp/netpos/contactless/cr100/utils/TLVParser;

    sget-object v5, Lcom/woleapp/netpos/contactless/cr100/utils/TLVParser;->INSTANCE:Lcom/woleapp/netpos/contactless/cr100/utils/TLVParser;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5, v3}, Lcom/woleapp/netpos/contactless/cr100/utils/TLVParser;->parse(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Lcom/woleapp/netpos/contactless/cr100/utils/TLVParser;->getTlvC0AndC2FromNfcBatch(Ljava/util/List;)Lkotlin/Pair;

    move-result-object v4

    invoke-virtual {v4}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/woleapp/netpos/contactless/cr100/utils/TLV;

    .local v5, "tagC0":Lcom/woleapp/netpos/contactless/cr100/utils/TLV;
    invoke-virtual {v4}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/woleapp/netpos/contactless/cr100/utils/TLV;

    .line 75
    .local v4, "tagC2":Lcom/woleapp/netpos/contactless/cr100/utils/TLV;
    sget-object v6, Lcom/woleapp/netpos/contactless/cr100/utils/DUKPK2009CBC;->INSTANCE:Lcom/woleapp/netpos/contactless/cr100/utils/DUKPK2009CBC;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v7, v5, Lcom/woleapp/netpos/contactless/cr100/utils/TLV;->value:Ljava/lang/String;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v8, v4, Lcom/woleapp/netpos/contactless/cr100/utils/TLV;->value:Ljava/lang/String;

    sget-object v9, Lcom/woleapp/netpos/contactless/cr100/utils/DUKPK2009CBC$Enum_key;->DATA:Lcom/woleapp/netpos/contactless/cr100/utils/DUKPK2009CBC$Enum_key;

    .line 76
    sget-object v10, Lcom/woleapp/netpos/contactless/cr100/utils/DUKPK2009CBC$Enum_mode;->CBC:Lcom/woleapp/netpos/contactless/cr100/utils/DUKPK2009CBC$Enum_mode;

    iget-object v11, v0, Lcom/woleapp/netpos/contactless/cr100/MyQposClass$onDoTradeResult$1;->this$0:Lcom/woleapp/netpos/contactless/cr100/MyQposClass;

    invoke-static {v11}, Lcom/woleapp/netpos/contactless/cr100/MyQposClass;->access$getContext$p(Lcom/woleapp/netpos/contactless/cr100/MyQposClass;)Landroidx/fragment/app/FragmentActivity;

    move-result-object v11

    check-cast v11, Landroid/content/Context;

    .line 75
    invoke-virtual/range {v6 .. v11}, Lcom/woleapp/netpos/contactless/cr100/utils/DUKPK2009CBC;->getData(Ljava/lang/String;Ljava/lang/String;Lcom/woleapp/netpos/contactless/cr100/utils/DUKPK2009CBC$Enum_key;Lcom/woleapp/netpos/contactless/cr100/utils/DUKPK2009CBC$Enum_mode;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 78
    .local v6, "decryptedIcc":Ljava/lang/String;
    sget-object v12, Lcom/woleapp/netpos/contactless/cr100/utils/TLVParser;->INSTANCE:Lcom/woleapp/netpos/contactless/cr100/utils/TLVParser;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x6

    const/16 v17, 0x0

    move-object v13, v6

    invoke-static/range {v12 .. v17}, Lcom/woleapp/netpos/contactless/cr100/utils/TLVParser;->findTagValue$default(Lcom/woleapp/netpos/contactless/cr100/utils/TLVParser;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 80
    .local v7, "cardTypeAid":Ljava/lang/String;
    sget-object v8, Lcom/woleapp/netpos/contactless/cr100/utils/TLVParser;->INSTANCE:Lcom/woleapp/netpos/contactless/cr100/utils/TLVParser;

    invoke-virtual {v8, v7}, Lcom/woleapp/netpos/contactless/cr100/utils/TLVParser;->getCardSchemeFromAid(Ljava/lang/String;)Lcom/woleapp/netpos/contactless/taponphone/visa/NfcPaymentType;

    move-result-object v8

    .line 83
    .local v8, "cardType":Lcom/woleapp/netpos/contactless/taponphone/visa/NfcPaymentType;
    iget-object v9, v0, Lcom/woleapp/netpos/contactless/cr100/MyQposClass$onDoTradeResult$1;->this$0:Lcom/woleapp/netpos/contactless/cr100/MyQposClass;

    invoke-static {v9}, Lcom/woleapp/netpos/contactless/cr100/MyQposClass;->access$get_cardInfoFlow$p(Lcom/woleapp/netpos/contactless/cr100/MyQposClass;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v9

    iget-object v10, v0, Lcom/woleapp/netpos/contactless/cr100/MyQposClass$onDoTradeResult$1;->this$0:Lcom/woleapp/netpos/contactless/cr100/MyQposClass;

    invoke-static {v10}, Lcom/woleapp/netpos/contactless/cr100/MyQposClass;->access$get_cardInfoFlow$p(Lcom/woleapp/netpos/contactless/cr100/MyQposClass;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v10

    invoke-interface {v10}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v10

    move-object v12, v10

    check-cast v12, Lcom/woleapp/netpos/contactless/cr100/model/BtCardInfo;

    const/4 v13, 0x0

    .line 84
    nop

    .line 85
    nop

    .line 83
    const/16 v17, 0x3

    const/16 v18, 0x0

    move-object v15, v6

    move-object/from16 v16, v8

    invoke-static/range {v12 .. v18}, Lcom/woleapp/netpos/contactless/cr100/model/BtCardInfo;->copy$default(Lcom/woleapp/netpos/contactless/cr100/model/BtCardInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/woleapp/netpos/contactless/taponphone/visa/NfcPaymentType;ILjava/lang/Object;)Lcom/woleapp/netpos/contactless/cr100/model/BtCardInfo;

    move-result-object v10

    invoke-interface {v9, v10}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 89
    .end local v3    # "tlv":Ljava/lang/String;
    .end local v4    # "tagC2":Lcom/woleapp/netpos/contactless/cr100/utils/TLV;
    .end local v5    # "tagC0":Lcom/woleapp/netpos/contactless/cr100/utils/TLV;
    .end local v6    # "decryptedIcc":Ljava/lang/String;
    .end local v7    # "cardTypeAid":Ljava/lang/String;
    .end local v8    # "cardType":Lcom/woleapp/netpos/contactless/taponphone/visa/NfcPaymentType;
    :cond_1
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
