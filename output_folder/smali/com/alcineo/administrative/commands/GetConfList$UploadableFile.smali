.class public Lcom/alcineo/administrative/commands/GetConfList$UploadableFile;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alcineo/administrative/commands/GetConfList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UploadableFile"
.end annotation


# instance fields
.field public id:B

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>(BLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lcom/alcineo/administrative/commands/GetConfList$UploadableFile;->id:B

    iput-object p2, p0, Lcom/alcineo/administrative/commands/GetConfList$UploadableFile;->name:Ljava/lang/String;

    return-void
.end method
