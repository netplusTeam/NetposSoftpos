.class public Landroid_serialport_api/SerialPortFinder$a;
.super Ljava/lang/Object;
.source "SerialPortFinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid_serialport_api/SerialPortFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field public c:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic d:Landroid_serialport_api/SerialPortFinder;


# direct methods
.method public constructor <init>(Landroid_serialport_api/SerialPortFinder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid_serialport_api/SerialPortFinder$a;->d:Landroid_serialport_api/SerialPortFinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/4 p1, 0x0

    iput-object p1, p0, Landroid_serialport_api/SerialPortFinder$a;->c:Ljava/util/Vector;

    .line 8
    iput-object p2, p0, Landroid_serialport_api/SerialPortFinder$a;->a:Ljava/lang/String;

    .line 9
    iput-object p3, p0, Landroid_serialport_api/SerialPortFinder$a;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Vector;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid_serialport_api/SerialPortFinder$a;->c:Ljava/util/Vector;

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Landroid_serialport_api/SerialPortFinder$a;->c:Ljava/util/Vector;

    .line 3
    new-instance v0, Ljava/io/File;

    const-string v1, "/dev"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    .line 6
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 7
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid_serialport_api/SerialPortFinder$a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found new device: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SerialPort"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iget-object v2, p0, Landroid_serialport_api/SerialPortFinder$a;->c:Ljava/util/Vector;

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 13
    :cond_1
    iget-object v0, p0, Landroid_serialport_api/SerialPortFinder$a;->c:Ljava/util/Vector;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid_serialport_api/SerialPortFinder$a;->a:Ljava/lang/String;

    return-object v0
.end method
