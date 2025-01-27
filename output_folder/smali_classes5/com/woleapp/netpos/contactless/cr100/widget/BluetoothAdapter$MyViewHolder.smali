.class public Lcom/woleapp/netpos/contactless/cr100/widget/BluetoothAdapter$MyViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "BluetoothAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/woleapp/netpos/contactless/cr100/widget/BluetoothAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyViewHolder"
.end annotation


# instance fields
.field private iconImage:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/woleapp/netpos/contactless/cr100/widget/BluetoothAdapter;

.field private txt:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/woleapp/netpos/contactless/cr100/widget/BluetoothAdapter;Landroid/view/View;)V
    .locals 1
    .param p1, "this$0"    # Lcom/woleapp/netpos/contactless/cr100/widget/BluetoothAdapter;
    .param p2, "v"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "v"
        }
    .end annotation

    .line 110
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/cr100/widget/BluetoothAdapter$MyViewHolder;->this$0:Lcom/woleapp/netpos/contactless/cr100/widget/BluetoothAdapter;

    .line 111
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 112
    const v0, 0x7f0a01a8

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/cr100/widget/BluetoothAdapter$MyViewHolder;->iconImage:Landroid/widget/ImageView;

    .line 113
    const v0, 0x7f0a01ab

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/cr100/widget/BluetoothAdapter$MyViewHolder;->txt:Landroid/widget/TextView;

    .line 114
    return-void
.end method

.method static synthetic access$000(Lcom/woleapp/netpos/contactless/cr100/widget/BluetoothAdapter$MyViewHolder;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/woleapp/netpos/contactless/cr100/widget/BluetoothAdapter$MyViewHolder;

    .line 106
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/cr100/widget/BluetoothAdapter$MyViewHolder;->iconImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/woleapp/netpos/contactless/cr100/widget/BluetoothAdapter$MyViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/woleapp/netpos/contactless/cr100/widget/BluetoothAdapter$MyViewHolder;

    .line 106
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/cr100/widget/BluetoothAdapter$MyViewHolder;->txt:Landroid/widget/TextView;

    return-object v0
.end method
