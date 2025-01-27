.class public final Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment$onViewCreated$3;
.super Ljava/lang/Object;
.source "TransactionHistoryFragment.kt"

# interfaces
.implements Landroidx/appcompat/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTransactionHistoryFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TransactionHistoryFragment.kt\ncom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment$onViewCreated$3\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,319:1\n766#2:320\n857#2,2:321\n766#2:323\n857#2,2:324\n*S KotlinDebug\n*F\n+ 1 TransactionHistoryFragment.kt\ncom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment$onViewCreated$3\n*L\n146#1:320\n146#1:321,2\n163#1:323\n163#1:324,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\u0006\u001a\u00020\u00032\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0005H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment$onViewCreated$3",
        "Landroidx/appcompat/widget/SearchView$OnQueryTextListener;",
        "onQueryTextChange",
        "",
        "newText",
        "",
        "onQueryTextSubmit",
        "query",
        "app_fcmbeasypayDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;


# direct methods
.method constructor <init>(Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;)V
    .locals 0
    .param p1, "$receiver"    # Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;

    iput-object p1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment$onViewCreated$3;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 17
    .param p1, "newText"    # Ljava/lang/String;

    .line 158
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v3

    :goto_1
    const-string v4, "adapter"

    const/4 v5, 0x0

    if-eqz v1, :cond_3

    .line 159
    iget-object v1, v0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment$onViewCreated$3;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;

    invoke-static {v1}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;->access$getAdapter$p(Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;)Lcom/woleapp/netpos/contactless/adapter/TransactionsAdapter;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    move-object v5, v1

    :goto_2
    iget-object v1, v0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment$onViewCreated$3;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;

    invoke-static {v1}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;->access$getViewModel(Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;)Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;->getTransactionList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/woleapp/netpos/contactless/adapter/TransactionsAdapter;->submitList(Ljava/util/List;)V

    .line 160
    return v3

    .line 162
    :cond_3
    iget-object v1, v0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment$onViewCreated$3;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;

    invoke-static {v1}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;->access$getAdapter$p(Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;)Lcom/woleapp/netpos/contactless/adapter/TransactionsAdapter;

    move-result-object v1

    if-nez v1, :cond_4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v5

    .line 163
    :cond_4
    iget-object v4, v0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment$onViewCreated$3;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;

    invoke-static {v4}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;->access$getViewModel(Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;)Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;->getTransactionList()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_9

    check-cast v4, Ljava/lang/Iterable;

    .local v4, "$this$filter$iv":Ljava/lang/Iterable;
    const/4 v6, 0x0

    .line 323
    .local v6, "$i$f$filter":I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    check-cast v7, Ljava/util/Collection;

    .local v7, "destination$iv$iv":Ljava/util/Collection;
    move-object v8, v4

    .local v8, "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    const/4 v9, 0x0

    .line 324
    .local v9, "$i$f$filterTo":I
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .local v11, "element$iv$iv":Ljava/lang/Object;
    move-object v12, v11

    check-cast v12, Lcom/danbamitale/epmslib/entities/TransactionResponse;

    .local v12, "transactionResponse":Lcom/danbamitale/epmslib/entities/TransactionResponse;
    const/4 v13, 0x0

    .line 164
    .local v13, "$i$a$-filter-TransactionHistoryFragment$onViewCreated$3$onQueryTextChange$1":I
    invoke-virtual {v12}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getRRN()Ljava/lang/String;

    move-result-object v14

    check-cast v14, Ljava/lang/CharSequence;

    const-string v15, ""

    if-nez p1, :cond_5

    move-object/from16 v16, v15

    goto :goto_4

    :cond_5
    move-object/from16 v16, p1

    :goto_4
    move-object/from16 v3, v16

    check-cast v3, Ljava/lang/CharSequence;

    const/4 v0, 0x2

    invoke-static {v14, v3, v2, v0, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v3

    .line 165
    invoke-virtual {v12}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getSTAN()Ljava/lang/String;

    move-result-object v14

    check-cast v14, Ljava/lang/CharSequence;

    .line 166
    if-nez p1, :cond_6

    goto :goto_5

    :cond_6
    move-object/from16 v15, p1

    :goto_5
    check-cast v15, Ljava/lang/CharSequence;

    .line 165
    invoke-static {v14, v15, v2, v0, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    .line 164
    or-int/2addr v0, v3

    .end local v12    # "transactionResponse":Lcom/danbamitale/epmslib/entities/TransactionResponse;
    .end local v13    # "$i$a$-filter-TransactionHistoryFragment$onViewCreated$3$onQueryTextChange$1":I
    if-eqz v0, :cond_7

    invoke-interface {v7, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_7
    move-object/from16 v0, p0

    const/4 v3, 0x1

    goto :goto_3

    .line 325
    .end local v11    # "element$iv$iv":Ljava/lang/Object;
    :cond_8
    nop

    .end local v7    # "destination$iv$iv":Ljava/util/Collection;
    .end local v8    # "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    .end local v9    # "$i$f$filterTo":I
    move-object v5, v7

    check-cast v5, Ljava/util/List;

    .line 323
    nop

    .line 162
    .end local v4    # "$this$filter$iv":Ljava/lang/Iterable;
    .end local v6    # "$i$f$filter":I
    :cond_9
    invoke-virtual {v1, v5}, Lcom/woleapp/netpos/contactless/adapter/TransactionsAdapter;->submitList(Ljava/util/List;)V

    .line 171
    const/4 v0, 0x1

    return v0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 17
    .param p1, "query"    # Ljava/lang/String;

    .line 141
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v3

    :goto_1
    const-string v4, "adapter"

    const/4 v5, 0x0

    if-eqz v1, :cond_3

    .line 142
    iget-object v1, v0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment$onViewCreated$3;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;

    invoke-static {v1}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;->access$getAdapter$p(Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;)Lcom/woleapp/netpos/contactless/adapter/TransactionsAdapter;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    move-object v5, v1

    :goto_2
    iget-object v1, v0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment$onViewCreated$3;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;

    invoke-static {v1}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;->access$getViewModel(Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;)Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;->getTransactionList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/woleapp/netpos/contactless/adapter/TransactionsAdapter;->submitList(Ljava/util/List;)V

    .line 143
    return v3

    .line 145
    :cond_3
    iget-object v1, v0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment$onViewCreated$3;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;

    invoke-static {v1}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;->access$getAdapter$p(Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;)Lcom/woleapp/netpos/contactless/adapter/TransactionsAdapter;

    move-result-object v1

    if-nez v1, :cond_4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v5

    .line 146
    :cond_4
    iget-object v4, v0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment$onViewCreated$3;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;

    invoke-static {v4}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;->access$getViewModel(Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;)Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;->getTransactionList()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_7

    check-cast v4, Ljava/lang/Iterable;

    .local v4, "$this$filter$iv":Ljava/lang/Iterable;
    const/4 v6, 0x0

    .line 320
    .local v6, "$i$f$filter":I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    check-cast v7, Ljava/util/Collection;

    .local v7, "destination$iv$iv":Ljava/util/Collection;
    move-object v8, v4

    .local v8, "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    const/4 v9, 0x0

    .line 321
    .local v9, "$i$f$filterTo":I
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .local v11, "element$iv$iv":Ljava/lang/Object;
    move-object v12, v11

    check-cast v12, Lcom/danbamitale/epmslib/entities/TransactionResponse;

    .local v12, "transactionResponse":Lcom/danbamitale/epmslib/entities/TransactionResponse;
    const/4 v13, 0x0

    .line 147
    .local v13, "$i$a$-filter-TransactionHistoryFragment$onViewCreated$3$onQueryTextSubmit$1":I
    invoke-virtual {v12}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getRRN()Ljava/lang/String;

    move-result-object v14

    check-cast v14, Ljava/lang/CharSequence;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v15

    check-cast v15, Ljava/lang/CharSequence;

    const/4 v3, 0x2

    invoke-static {v14, v15, v2, v3, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v14

    .line 148
    invoke-virtual {v12}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getSTAN()Ljava/lang/String;

    move-result-object v15

    check-cast v15, Ljava/lang/CharSequence;

    .line 149
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    check-cast v0, Ljava/lang/CharSequence;

    .line 148
    invoke-static {v15, v0, v2, v3, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    .line 147
    or-int/2addr v0, v14

    .end local v12    # "transactionResponse":Lcom/danbamitale/epmslib/entities/TransactionResponse;
    .end local v13    # "$i$a$-filter-TransactionHistoryFragment$onViewCreated$3$onQueryTextSubmit$1":I
    if-eqz v0, :cond_5

    invoke-interface {v7, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_5
    move-object/from16 v0, p0

    const/4 v3, 0x1

    goto :goto_3

    .line 322
    .end local v11    # "element$iv$iv":Ljava/lang/Object;
    :cond_6
    nop

    .end local v7    # "destination$iv$iv":Ljava/util/Collection;
    .end local v8    # "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    .end local v9    # "$i$f$filterTo":I
    move-object v5, v7

    check-cast v5, Ljava/util/List;

    .line 320
    nop

    .line 145
    .end local v4    # "$this$filter$iv":Ljava/lang/Iterable;
    .end local v6    # "$i$f$filter":I
    :cond_7
    invoke-virtual {v1, v5}, Lcom/woleapp/netpos/contactless/adapter/TransactionsAdapter;->submitList(Ljava/util/List;)V

    .line 154
    const/4 v0, 0x1

    return v0
.end method
