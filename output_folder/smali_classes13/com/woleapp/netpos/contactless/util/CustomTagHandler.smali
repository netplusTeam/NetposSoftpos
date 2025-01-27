.class public final Lcom/woleapp/netpos/contactless/util/CustomTagHandler;
.super Ljava/lang/Object;
.source "CustomTagHandler.kt"

# interfaces
.implements Landroid/text/Html$TagHandler;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J.\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0016\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/woleapp/netpos/contactless/util/CustomTagHandler;",
        "Landroid/text/Html$TagHandler;",
        "()V",
        "handleTag",
        "",
        "opening",
        "",
        "tag",
        "",
        "output",
        "Landroid/text/Editable;",
        "xmlReader",
        "Lorg/xml/sax/XMLReader;",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleTag(ZLjava/lang/String;Landroid/text/Editable;Lorg/xml/sax/XMLReader;)V
    .locals 0
    .param p1, "opening"    # Z
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "output"    # Landroid/text/Editable;
    .param p4, "xmlReader"    # Lorg/xml/sax/XMLReader;

    .line 10
    return-void
.end method
