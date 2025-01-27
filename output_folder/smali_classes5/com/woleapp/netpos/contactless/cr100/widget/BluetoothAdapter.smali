.class public Lcom/woleapp/netpos/contactless/cr100/widget/BluetoothAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "BluetoothAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/woleapp/netpos/contactless/cr100/widget/BluetoothAdapter$EmptyViewHolder;,
        Lcom/woleapp/netpos/contactless/cr100/widget/BluetoothAdapter$MyViewHolder;,
        Lcom/woleapp/netpos/contactless/cr100/widget/BluetoothAdapter$OnBluetoothItemClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final VIEW_TYPE_EMPTY:I = 0x1

.field private static final VIEW_TYPE_ITEM:I


# instance fields
.field private datas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;>;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mEvent:Lcom/woleapp/netpos/contactless/cr100/widget/BluetoothAdapter$OnBluetoothItemClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;>;)V"
        }
    .end annotation

    .line 32
    .local p2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;*>;>;"
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/cr100/widget/BluetoothAdapter;->mContext:Landroid/content/Context;

    .line 34
    iput-object p2, p0, Lcom/woleapp/netpos/contactless/cr100/widget/BluetoothAdapter;->datas:Ljava/util/ArrayList;

    .line 35
    return-void
.end method


# virtual methods
.method public clearData()V
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/cr100/widget/BluetoothAdapter;->datas:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/cr100/widget/BluetoothAdapter;->datas:Ljava/util/ArrayList;

    .line 54
    :cond_0
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/cr100/widget/BluetoothAdapter;->datas:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/cr100/widget/BluetoothAdapter;->datas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/cr100/widget/BluetoothAdapter;->datas:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method synthetic lambda$onBindViewHolder$0$com-woleapp-netpos-contactless-cr100-widget-BluetoothAdapter(ILjava/util/Map;Landroid/view/View;)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "itemData"    # Ljava/util/Map;
    .param p3, "v"    # Landroid/view/View;

    .line 85
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/cr100/widget/BluetoothAdapter;->mEvent:Lcom/woleapp/netpos/contactless/cr100/widget/BluetoothAdapter$OnBluetoothItemClickListener;

    if-eqz v0, :cond_0

    .line 86
    invoke-interface {v0, p1, p2}, Lcom/woleapp/netpos/contactless/cr100/widget/BluetoothAdapter$OnBluetoothItemClickListener;->onItemClick(ILjava/util/Map;)V

    .line 88
    :cond_0
    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 5
    .param p1, "holder"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "holder",
            "position"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/cr100/widget/BluetoothAdapter;->datas:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 78
    instance-of v0, p1, Lcom/woleapp/netpos/contactless/cr100/widget/BluetoothAdapter$MyViewHolder;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/cr100/widget/BluetoothAdapter;->datas:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 80
    .local v0, "itemData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    const-string v1, "ICON"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 81
    .local v1, "idIcon":I
    const-string v2, "TITLE"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 82
    .local v2, "sTitleName":Ljava/lang/String;
    move-object v3, p1

    check-cast v3, Lcom/woleapp/netpos/contactless/cr100/widget/BluetoothAdapter$MyViewHolder;

    invoke-static {v3}, Lcom/woleapp/netpos/contactless/cr100/widget/BluetoothAdapter$MyViewHolder;->access$000(Lcom/woleapp/netpos/contactless/cr100/widget/BluetoothAdapter$MyViewHolder;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 83
    move-object v3, p1

    check-cast v3, Lcom/woleapp/netpos/contactless/cr100/widget/BluetoothAdapter$MyViewHolder;

    invoke-static {v3}, Lcom/woleapp/netpos/contactless/cr100/widget/BluetoothAdapter$MyViewHolder;->access$100(Lcom/woleapp/netpos/contactless/cr100/widget/BluetoothAdapter$MyViewHolder;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v3, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v4, Lcom/woleapp/netpos/contactless/cr100/widget/BluetoothAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, p2, v0}, Lcom/woleapp/netpos/contactless/cr100/widget/BluetoothAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/woleapp/netpos/contactless/cr100/widget/BluetoothAdapter;ILjava/util/Map;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    .end local v0    # "itemData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    .end local v1    # "idIcon":I
    .end local v2    # "sTitleName":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "parent",
            "viewType"
        }
    .end annotation

    .line 65
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 66
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/cr100/widget/BluetoothAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f0d0065

    invoke-static {v1, v2, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 67
    .local v0, "v":Landroid/view/View;
    new-instance v1, Lcom/woleapp/netpos/contactless/cr100/widget/BluetoothAdapter$EmptyViewHolder;

    invoke-direct {v1, p0, v0}, Lcom/woleapp/netpos/contactless/cr100/widget/BluetoothAdapter$EmptyViewHolder;-><init>(Lcom/woleapp/netpos/contactless/cr100/widget/BluetoothAdapter;Landroid/view/View;)V

    return-object v1

    .line 69
    .end local v0    # "v":Landroid/view/View;
    :cond_0
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/cr100/widget/BluetoothAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f0d001f

    invoke-static {v1, v2, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 70
    .restart local v0    # "v":Landroid/view/View;
    new-instance v1, Lcom/woleapp/netpos/contactless/cr100/widget/BluetoothAdapter$MyViewHolder;

    invoke-direct {v1, p0, v0}, Lcom/woleapp/netpos/contactless/cr100/widget/BluetoothAdapter$MyViewHolder;-><init>(Lcom/woleapp/netpos/contactless/cr100/widget/BluetoothAdapter;Landroid/view/View;)V

    return-object v1
.end method

.method public setData(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "map"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .line 38
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/cr100/widget/BluetoothAdapter;->datas:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 39
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    :cond_0
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/cr100/widget/BluetoothAdapter;->notifyDataSetChanged()V

    .line 42
    return-void
.end method

.method public setListData(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;>;)V"
        }
    .end annotation

    .line 45
    .local p1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;*>;>;"
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/cr100/widget/BluetoothAdapter;->datas:Ljava/util/ArrayList;

    .line 46
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/cr100/widget/BluetoothAdapter;->notifyDataSetChanged()V

    .line 47
    return-void
.end method

.method public setOnBluetoothItemClickListener(Lcom/woleapp/netpos/contactless/cr100/widget/BluetoothAdapter$OnBluetoothItemClickListener;)V
    .locals 0
    .param p1, "event"    # Lcom/woleapp/netpos/contactless/cr100/widget/BluetoothAdapter$OnBluetoothItemClickListener;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 103
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/cr100/widget/BluetoothAdapter;->mEvent:Lcom/woleapp/netpos/contactless/cr100/widget/BluetoothAdapter$OnBluetoothItemClickListener;

    .line 104
    return-void
.end method
