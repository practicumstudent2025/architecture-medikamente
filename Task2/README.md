# Задание 2: Проектирование решения с Privacy by Design

## Описание

Это задание посвящено проектированию целевой архитектуры системы «Медикаменте» с учётом принципов Privacy by Design.

## Структура решения

### Диаграммы

- **C4_Context_ToBe.drawio** - Диаграмма контекста C4 целевого состояния системы

## Ключевые компоненты Privacy by Design

### 1. Privacy & Security Layer

Слой, обеспечивающий соблюдение принципов Privacy by Design на всех уровнях системы:

- **API Gateway (Kong)**: Централизованное управление API с mTLS и OAuth 2.0
- **IAM Service (Azure AD)**: RBAC/ABAC, MFA для всех пользователей
- **Data Classification & Tagging (Apache Atlas)**: Автоматическое тегирование данных
- **Encryption Service (HashiCorp Vault)**: AES-256 шифрование, управление ключами
- **Audit & Monitoring (ELK Stack, Splunk)**: SIEM, DLP, логирование всех операций

### 2. Analytics Layer (Privacy by Design)

Слой для аналитической работы с данными с учётом принципов Privacy by Design:

- **Data Lake (ClickHouse)**: Хранение только обезличенных данных
- **BI Service (Tableau, Power BI)**: Аналитика на обезличенных данных
- **ML/AI Service**: Обучение моделей на обезличенных данных
- **Anonymization Service**: Автоматическое обезличивание данных перед попаданием в аналитику

## Принципы Privacy by Design в архитектуре

1. **Proactive not Reactive**: Защита заложена в архитектуру с самого начала
2. **Privacy as the Default**: По умолчанию применяются максимальные меры защиты
3. **Full Functionality**: Защита не мешает функциональности системы
4. **End-to-End Security**: Защита на всех этапах жизненного цикла данных
5. **Visibility and Transparency**: Полная прозрачность обработки данных
6. **Respect for User Privacy**: Уважение к правам пользователей
