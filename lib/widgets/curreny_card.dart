import 'package:flutter/material.dart';

class CurrencyCard extends StatelessWidget {
  final String name, code, amount;
  final IconData icon;
  final int order;
  final bool isInverted;

  final _blackColor = const Color(0xFF1F2123); // private

  const CurrencyCard({
    super.key,
    required this.name,
    required this.code,
    required this.amount,
    required this.order,
    required this.icon,
    required this.isInverted,
  });

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(0, order * -10),
      child: Container(
        clipBehavior: Clip.hardEdge, // 내부요소가 넘치는 경우 자르기
        decoration: BoxDecoration(
          color: isInverted ? Colors.white : _blackColor,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Row(
            // Text & Icon
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                // 상하 (통화 / 박스 / 금액)
                crossAxisAlignment:
                    CrossAxisAlignment.start, // Column - cross : 가로축
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      color: isInverted ? _blackColor : Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    // Text들을 한 줄로 표현하기 위해 Row 사용
                    children: [
                      Text(
                        amount,
                        style: TextStyle(
                          color: isInverted ? _blackColor : Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        code,
                        style: TextStyle(
                          color: isInverted
                              ? _blackColor
                              : Colors.white.withOpacity(0.8),
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Transform.scale(
                // 아이콘이 커져도 카드가 커지지 않도록 Translate 사용
                scale: 2.2, // 크기
                child: Transform.translate(
                  // 위치
                  offset: const Offset(-3, 18),
                  child: Icon(
                    icon,
                    color: isInverted ? _blackColor : Colors.white,
                    size: 88,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
