.class public Lcom/sleepycat/je/jmx/JEDiagnostics;
.super Lcom/sleepycat/je/jmx/JEMBean;
.source "JEDiagnostics.java"

# interfaces
.implements Ljavax/management/DynamicMBean;


# static fields
.field protected static final ATT_CONSOLEHANDLER_LEVEL:Ljavax/management/MBeanAttributeInfo;

.field protected static final ATT_FILEHANDLER_LEVEL:Ljavax/management/MBeanAttributeInfo;

.field protected static final CONSOLEHANDLER_LEVEL:Ljava/lang/String; = "consoleHandlerLevel"

.field protected static final FILEHANDLER_LEVEL:Ljava/lang/String; = "fileHandlerLevel"

.field protected static final OP_RESET_LOGGING:Ljava/lang/String; = "resetLoggerLevel"

.field protected static final OP_RESET_LOGGING_LEVEL:Ljavax/management/MBeanOperationInfo;

.field protected static final resetLoggingParams:[Ljavax/management/MBeanParameterInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 69
    new-instance v7, Ljavax/management/MBeanAttributeInfo;

    const-string v1, "consoleHandlerLevel"

    const-string v2, "java.lang.String"

    const-string v3, "ConsoleHandler level."

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Ljavax/management/MBeanAttributeInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    sput-object v7, Lcom/sleepycat/je/jmx/JEDiagnostics;->ATT_CONSOLEHANDLER_LEVEL:Ljavax/management/MBeanAttributeInfo;

    .line 75
    new-instance v0, Ljavax/management/MBeanAttributeInfo;

    const-string v9, "fileHandlerLevel"

    const-string v10, "java.lang.String"

    const-string v11, "FileHandler level."

    const/4 v12, 0x1

    const/4 v13, 0x1

    const/4 v14, 0x0

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Ljavax/management/MBeanAttributeInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    sput-object v0, Lcom/sleepycat/je/jmx/JEDiagnostics;->ATT_FILEHANDLER_LEVEL:Ljavax/management/MBeanAttributeInfo;

    .line 86
    const/4 v0, 0x2

    new-array v4, v0, [Ljavax/management/MBeanParameterInfo;

    new-instance v0, Ljavax/management/MBeanParameterInfo;

    const-string v1, "Logger Name"

    const-string v2, "java.lang.String"

    const-string v3, "Specify the target logger."

    invoke-direct {v0, v1, v2, v3}, Ljavax/management/MBeanParameterInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    aput-object v0, v4, v1

    new-instance v0, Ljavax/management/MBeanParameterInfo;

    const-string v1, "Logging Level"

    const-string v3, "The new logging level for the target logger."

    invoke-direct {v0, v1, v2, v3}, Ljavax/management/MBeanParameterInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    aput-object v0, v4, v1

    sput-object v4, Lcom/sleepycat/je/jmx/JEDiagnostics;->resetLoggingParams:[Ljavax/management/MBeanParameterInfo;

    .line 94
    new-instance v0, Ljavax/management/MBeanOperationInfo;

    const-string/jumbo v2, "resetLoggerLevel"

    const-string v3, "Change the logging level for the specified logger."

    const-string/jumbo v5, "void"

    const/4 v6, 0x3

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Ljavax/management/MBeanOperationInfo;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljavax/management/MBeanParameterInfo;Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/je/jmx/JEDiagnostics;->OP_RESET_LOGGING_LEVEL:Ljavax/management/MBeanOperationInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 105
    invoke-direct {p0}, Lcom/sleepycat/je/jmx/JEMBean;-><init>()V

    .line 106
    return-void
.end method

.method protected constructor <init>(Lcom/sleepycat/je/Environment;)V
    .locals 0
    .param p1, "env"    # Lcom/sleepycat/je/Environment;

    .line 101
    invoke-direct {p0, p1}, Lcom/sleepycat/je/jmx/JEMBean;-><init>(Lcom/sleepycat/je/Environment;)V

    .line 102
    return-void
.end method

.method private getLevel(Ljava/lang/Object;)Ljava/util/logging/Level;
    .locals 3
    .param p1, "level"    # Ljava/lang/Object;

    .line 193
    :try_start_0
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/util/logging/Level;->parse(Ljava/lang/String;)Ljava/util/logging/Level;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 194
    :catch_0
    move-exception v0

    .line 195
    .local v0, "e":Ljava/lang/NullPointerException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Can\'t use null for level value."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method protected addOperations()V
    .locals 2

    .line 316
    iget-object v0, p0, Lcom/sleepycat/je/jmx/JEDiagnostics;->operationList:Ljava/util/ArrayList;

    sget-object v1, Lcom/sleepycat/je/jmx/JEDiagnostics;->OP_RESET_LOGGING_LEVEL:Ljavax/management/MBeanOperationInfo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 317
    return-void
.end method

.method protected doRegisterMBean(Lcom/sleepycat/je/Environment;)V
    .locals 3
    .param p1, "env"    # Lcom/sleepycat/je/Environment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 298
    iget-object v0, p0, Lcom/sleepycat/je/jmx/JEDiagnostics;->server:Ljavax/management/MBeanServer;

    new-instance v1, Lcom/sleepycat/je/jmx/JEDiagnostics;

    invoke-direct {v1, p1}, Lcom/sleepycat/je/jmx/JEDiagnostics;-><init>(Lcom/sleepycat/je/Environment;)V

    iget-object v2, p0, Lcom/sleepycat/je/jmx/JEDiagnostics;->jeName:Ljavax/management/ObjectName;

    invoke-interface {v0, v1, v2}, Ljavax/management/MBeanServer;->registerMBean(Ljava/lang/Object;Ljavax/management/ObjectName;)Ljavax/management/ObjectInstance;

    .line 299
    return-void
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p1, "attributeName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/management/AttributeNotFoundException;,
            Ljavax/management/MBeanException;
        }
    .end annotation

    .line 122
    if-eqz p1, :cond_2

    .line 128
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/jmx/JEDiagnostics;->env:Lcom/sleepycat/je/Environment;

    invoke-static {v0}, Lcom/sleepycat/je/DbInternal;->getNonNullEnvImpl(Lcom/sleepycat/je/Environment;)Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    .line 130
    .local v0, "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    const-string v1, "consoleHandlerLevel"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 131
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getConsoleHandler()Ljava/util/logging/ConsoleHandler;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/logging/ConsoleHandler;->getLevel()Ljava/util/logging/Level;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/logging/Level;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 132
    :cond_0
    const-string v1, "fileHandlerLevel"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 133
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getFileHandler()Ljava/util/logging/FileHandler;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/logging/FileHandler;->getLevel()Ljava/util/logging/Level;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/logging/Level;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 135
    :cond_1
    new-instance v1, Ljavax/management/AttributeNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attributes "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not valid."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/management/AttributeNotFoundException;-><init>(Ljava/lang/String;)V

    .end local p1    # "attributeName":Ljava/lang/String;
    throw v1
    :try_end_0
    .catch Lcom/sleepycat/je/DatabaseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    .end local v0    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .restart local p1    # "attributeName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Lcom/sleepycat/je/DatabaseException;
    new-instance v1, Ljavax/management/MBeanException;

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Lcom/sleepycat/je/DatabaseException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljavax/management/MBeanException;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 123
    .end local v0    # "e":Lcom/sleepycat/je/DatabaseException;
    :cond_2
    new-instance v0, Ljavax/management/AttributeNotFoundException;

    const-string v1, "Attribute name can\'t be null."

    invoke-direct {v0, v1}, Ljavax/management/AttributeNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected getAttributeList()[Ljavax/management/MBeanAttributeInfo;
    .locals 2

    .line 303
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 306
    .local v0, "attrList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljavax/management/MBeanAttributeInfo;>;"
    sget-object v1, Lcom/sleepycat/je/jmx/JEDiagnostics;->ATT_CONSOLEHANDLER_LEVEL:Ljavax/management/MBeanAttributeInfo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 307
    iget-object v1, p0, Lcom/sleepycat/je/jmx/JEDiagnostics;->env:Lcom/sleepycat/je/Environment;

    invoke-static {v1}, Lcom/sleepycat/je/DbInternal;->getNonNullEnvImpl(Lcom/sleepycat/je/Environment;)Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getFileHandler()Ljava/util/logging/FileHandler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 308
    sget-object v1, Lcom/sleepycat/je/jmx/JEDiagnostics;->ATT_FILEHANDLER_LEVEL:Ljavax/management/MBeanAttributeInfo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 311
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljavax/management/MBeanAttributeInfo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljavax/management/MBeanAttributeInfo;

    return-object v1
.end method

.method public getAttributes([Ljava/lang/String;)Ljavax/management/AttributeList;
    .locals 5
    .param p1, "attributes"    # [Ljava/lang/String;

    .line 206
    if-eqz p1, :cond_1

    .line 210
    new-instance v0, Ljavax/management/AttributeList;

    invoke-direct {v0}, Ljavax/management/AttributeList;-><init>()V

    .line 212
    .local v0, "results":Ljavax/management/AttributeList;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 214
    :try_start_0
    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Lcom/sleepycat/je/jmx/JEDiagnostics;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 215
    .local v2, "value":Ljava/lang/Object;
    new-instance v3, Ljavax/management/Attribute;

    aget-object v4, p1, v1

    invoke-direct {v3, v4, v2}, Ljavax/management/Attribute;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, Ljavax/management/AttributeList;->add(Ljavax/management/Attribute;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    .end local v2    # "value":Ljava/lang/Object;
    goto :goto_1

    .line 216
    :catch_0
    move-exception v2

    .line 217
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 212
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 221
    .end local v1    # "i":I
    :cond_0
    return-object v0

    .line 207
    .end local v0    # "results":Ljavax/management/AttributeList;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Attributes can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected initClassFields()V
    .locals 1

    .line 110
    const-class v0, Lcom/sleepycat/je/jmx/JEDiagnostics;

    iput-object v0, p0, Lcom/sleepycat/je/jmx/JEDiagnostics;->currentClass:Ljava/lang/Class;

    .line 111
    const-string v0, "JEDiagnostics"

    iput-object v0, p0, Lcom/sleepycat/je/jmx/JEDiagnostics;->className:Ljava/lang/String;

    .line 112
    const-string v0, "Logging Monitor on an open Environment."

    iput-object v0, p0, Lcom/sleepycat/je/jmx/JEDiagnostics;->DESCRIPTION:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public invoke(Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .param p1, "actionName"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/Object;
    .param p3, "signature"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/management/MBeanException;
        }
    .end annotation

    .line 260
    if-eqz p1, :cond_3

    .line 265
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/jmx/JEDiagnostics;->env:Lcom/sleepycat/je/Environment;

    invoke-static {v0}, Lcom/sleepycat/je/DbInternal;->getNonNullEnvImpl(Lcom/sleepycat/je/Environment;)Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    .line 267
    .local v0, "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    const-string/jumbo v1, "resetLoggerLevel"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 268
    if-eqz p2, :cond_1

    array-length v1, p2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 272
    :cond_0
    const/4 v1, 0x0

    aget-object v1, p2, v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v2, p2, v2

    check-cast v2, Ljava/lang/String;

    .line 273
    invoke-static {v2}, Ljava/util/logging/Level;->parse(Ljava/lang/String;)Ljava/util/logging/Level;

    move-result-object v2

    .line 272
    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->resetLoggingLevel(Ljava/lang/String;Ljava/util/logging/Level;)V

    .line 274
    const/4 v1, 0x0

    return-object v1

    .line 269
    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Parameter is not valid"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 277
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ActionName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not valid."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/sleepycat/je/DatabaseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 289
    .end local v0    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    :catch_0
    move-exception v0

    .line 290
    .local v0, "e":Ljava/lang/NullPointerException;
    new-instance v1, Ljavax/management/MBeanException;

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljavax/management/MBeanException;-><init>(Ljava/lang/Exception;Ljava/lang/String;)V

    throw v1

    .line 279
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 286
    .local v0, "e":Lcom/sleepycat/je/DatabaseException;
    new-instance v1, Ljavax/management/MBeanException;

    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 287
    invoke-virtual {v0}, Lcom/sleepycat/je/DatabaseException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 288
    invoke-static {v0}, Lcom/sleepycat/je/utilint/LoggerUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljavax/management/MBeanException;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 261
    .end local v0    # "e":Lcom/sleepycat/je/DatabaseException;
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ActionName can\'t be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAttribute(Ljavax/management/Attribute;)V
    .locals 7
    .param p1, "attribute"    # Ljavax/management/Attribute;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/management/AttributeNotFoundException;,
            Ljavax/management/InvalidAttributeValueException;,
            Ljavax/management/MBeanException;
        }
    .end annotation

    .line 151
    if-eqz p1, :cond_4

    .line 156
    invoke-virtual {p1}, Ljavax/management/Attribute;->getName()Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {p1}, Ljavax/management/Attribute;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 159
    .local v1, "value":Ljava/lang/Object;
    if-eqz v0, :cond_3

    .line 164
    if-eqz v1, :cond_2

    .line 170
    :try_start_0
    iget-object v2, p0, Lcom/sleepycat/je/jmx/JEDiagnostics;->env:Lcom/sleepycat/je/Environment;

    invoke-static {v2}, Lcom/sleepycat/je/DbInternal;->getNonNullEnvImpl(Lcom/sleepycat/je/Environment;)Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v2

    .line 171
    .local v2, "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/util/logging/Level;->parse(Ljava/lang/String;)Ljava/util/logging/Level;

    move-result-object v3

    .line 173
    .local v3, "level":Ljava/util/logging/Level;
    const-string v4, "consoleHandlerLevel"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 174
    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getConsoleHandler()Ljava/util/logging/ConsoleHandler;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/logging/ConsoleHandler;->setLevel(Ljava/util/logging/Level;)V

    goto :goto_0

    .line 175
    :cond_0
    const-string v4, "fileHandlerLevel"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 176
    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getFileHandler()Ljava/util/logging/FileHandler;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/logging/FileHandler;->setLevel(Ljava/util/logging/Level;)V

    .line 187
    .end local v2    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .end local v3    # "level":Ljava/util/logging/Level;
    :goto_0
    nop

    .line 188
    return-void

    .line 178
    .restart local v2    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .restart local v3    # "level":Ljava/util/logging/Level;
    :cond_1
    new-instance v4, Ljavax/management/AttributeNotFoundException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Attribute "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not valid."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljavax/management/AttributeNotFoundException;-><init>(Ljava/lang/String;)V

    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "value":Ljava/lang/Object;
    .end local p1    # "attribute":Ljavax/management/Attribute;
    throw v4
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    .end local v2    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .end local v3    # "level":Ljava/util/logging/Level;
    .restart local v0    # "name":Ljava/lang/String;
    .restart local v1    # "value":Ljava/lang/Object;
    .restart local p1    # "attribute":Ljavax/management/Attribute;
    :catch_0
    move-exception v2

    .line 186
    .local v2, "e":Ljava/lang/SecurityException;
    new-instance v3, Ljavax/management/MBeanException;

    invoke-virtual {v2}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Ljavax/management/MBeanException;-><init>(Ljava/lang/Exception;Ljava/lang/String;)V

    throw v3

    .line 181
    .end local v2    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v2

    .line 182
    .local v2, "e":Ljava/lang/NullPointerException;
    new-instance v3, Ljavax/management/InvalidAttributeValueException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Setting value for attribute "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "is invalid because of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 184
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljavax/management/InvalidAttributeValueException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 165
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :cond_2
    new-instance v2, Ljavax/management/InvalidAttributeValueException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attribute value for attribute "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " can\'t be null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/management/InvalidAttributeValueException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 160
    :cond_3
    new-instance v2, Ljavax/management/AttributeNotFoundException;

    const-string v3, "Attribute name can\'t be null."

    invoke-direct {v2, v3}, Ljavax/management/AttributeNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 152
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "value":Ljava/lang/Object;
    :cond_4
    new-instance v0, Ljavax/management/AttributeNotFoundException;

    const-string v1, "Attribute can\'t be null."

    invoke-direct {v0, v1}, Ljavax/management/AttributeNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAttributes(Ljavax/management/AttributeList;)Ljavax/management/AttributeList;
    .locals 6
    .param p1, "attributes"    # Ljavax/management/AttributeList;

    .line 230
    if-eqz p1, :cond_1

    .line 234
    new-instance v0, Ljavax/management/AttributeList;

    invoke-direct {v0}, Ljavax/management/AttributeList;-><init>()V

    .line 236
    .local v0, "results":Ljavax/management/AttributeList;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljavax/management/AttributeList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 237
    invoke-virtual {p1, v1}, Ljavax/management/AttributeList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/management/Attribute;

    .line 239
    .local v2, "attr":Ljavax/management/Attribute;
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/sleepycat/je/jmx/JEDiagnostics;->setAttribute(Ljavax/management/Attribute;)V

    .line 240
    invoke-virtual {v2}, Ljavax/management/Attribute;->getName()Ljava/lang/String;

    move-result-object v3

    .line 241
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/sleepycat/je/jmx/JEDiagnostics;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 242
    .local v4, "newValue":Ljava/lang/Object;
    new-instance v5, Ljavax/management/Attribute;

    invoke-direct {v5, v3, v4}, Ljavax/management/Attribute;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v5}, Ljavax/management/AttributeList;->add(Ljavax/management/Attribute;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "newValue":Ljava/lang/Object;
    goto :goto_1

    .line 243
    :catch_0
    move-exception v3

    .line 244
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 236
    .end local v2    # "attr":Ljavax/management/Attribute;
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 248
    .end local v1    # "i":I
    :cond_0
    return-object v0

    .line 231
    .end local v0    # "results":Ljavax/management/AttributeList;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Attribute list can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
