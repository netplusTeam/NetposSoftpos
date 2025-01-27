.class Ljdbm/btree/BPage$InsertResult;
.super Ljava/lang/Object;
.source "BPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljdbm/btree/BPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InsertResult"
.end annotation


# instance fields
.field _existing:Ljava/lang/Object;

.field _overflow:Ljdbm/btree/BPage;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1094
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
